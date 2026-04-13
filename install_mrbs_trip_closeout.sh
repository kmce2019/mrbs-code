#!/usr/bin/env bash
set -euo pipefail

# Tailored for the user's known MRBS deployment details:
# - MRBS container: MRBS
# - Web root: /app/www/public
# - Patch bundle contents copied into /tmp inside the container
#
# This script:
# 1. verifies docker + container access
# 2. copies the patch bundle into the MRBS container
# 3. backs up the three PHP files
# 4. copies trip_closeout.inc.php into the web root
# 5. optionally runs the SQL migration if mysql client + DB creds are available
# 6. prints exact next manual steps for applying the patch snippets
#
# Note: because the generated PHP patches were built against standard MRBS layout
# and not the exact live files from the running container, patch application is left
# as a controlled manual step after backups are made.

MRBS_CONTAINER="${MRBS_CONTAINER:-MRBS}"
WEBROOT="${WEBROOT:-/app/www/public}"
BUNDLE_DIR_LOCAL="${BUNDLE_DIR_LOCAL:-/mnt/data/mrbs_trip_closeout_patch}"
BUNDLE_DIR_IN_CONTAINER="${BUNDLE_DIR_IN_CONTAINER:-/tmp/mrbs_trip_closeout_patch}"
RESTART_AFTER="${RESTART_AFTER:-yes}"
RUN_SQL="${RUN_SQL:-ask}"
DB_MODE="${DB_MODE:-host}"
DB_CONTAINER="${DB_CONTAINER:-MRBS-DB}"
DB_NAME="${DB_NAME:-}"
DB_USER="${DB_USER:-}"
DB_PASS="${DB_PASS:-}"
STAMP="$(date +%Y%m%d-%H%M%S)"

say() { printf '\n[%s] %s\n' "$(date +%H:%M:%S)" "$*"; }
warn() { printf '\n[WARN] %s\n' "$*"; }
die() { printf '\n[ERROR] %s\n' "$*" >&2; exit 1; }

command -v docker >/dev/null 2>&1 || die "docker is not installed or not in PATH"
[ -d "$BUNDLE_DIR_LOCAL" ] || die "Patch bundle directory not found at $BUNDLE_DIR_LOCAL"

docker inspect "$MRBS_CONTAINER" >/dev/null 2>&1 || die "Container '$MRBS_CONTAINER' not found"

docker exec "$MRBS_CONTAINER" sh -lc "test -d '$WEBROOT'" >/dev/null 2>&1 || die "Web root '$WEBROOT' not found in container '$MRBS_CONTAINER'"

say "Using MRBS container: $MRBS_CONTAINER"
say "Using web root: $WEBROOT"
say "Using local bundle dir: $BUNDLE_DIR_LOCAL"

say "Creating patch workspace in container"
docker exec "$MRBS_CONTAINER" sh -lc "rm -rf '$BUNDLE_DIR_IN_CONTAINER' && mkdir -p '$BUNDLE_DIR_IN_CONTAINER/patches'"

docker cp "$BUNDLE_DIR_LOCAL/." "$MRBS_CONTAINER:$BUNDLE_DIR_IN_CONTAINER/"

say "Verifying expected files exist inside the container"
for f in \
  "$BUNDLE_DIR_IN_CONTAINER/001_trip_closeout_schema.sql" \
  "$BUNDLE_DIR_IN_CONTAINER/trip_closeout.inc.php" \
  "$BUNDLE_DIR_IN_CONTAINER/patches/edit_entry.php.patch" \
  "$BUNDLE_DIR_IN_CONTAINER/patches/edit_entry_handler.php.patch" \
  "$BUNDLE_DIR_IN_CONTAINER/patches/view_entry.php.patch"
do
  docker exec "$MRBS_CONTAINER" sh -lc "test -f '$f'" >/dev/null 2>&1 || die "Missing expected file in container: $f"
done

BACKUP_DIR="$WEBROOT/trip-closeout-backup-$STAMP"
say "Creating backups in $BACKUP_DIR"
docker exec "$MRBS_CONTAINER" sh -lc "mkdir -p '$BACKUP_DIR' && cp -a '$WEBROOT/edit_entry.php' '$BACKUP_DIR/edit_entry.php.bak' && cp -a '$WEBROOT/edit_entry_handler.php' '$BACKUP_DIR/edit_entry_handler.php.bak' && cp -a '$WEBROOT/view_entry.php' '$BACKUP_DIR/view_entry.php.bak'"

say "Copying helper include into web root"
docker exec "$MRBS_CONTAINER" sh -lc "cp -a '$BUNDLE_DIR_IN_CONTAINER/trip_closeout.inc.php' '$WEBROOT/trip_closeout.inc.php'"

if [ "$RUN_SQL" = "ask" ]; then
  printf '\nRun SQL migration now? [y/N]: '
  read -r run_sql_reply || true
  case "${run_sql_reply:-}" in
    y|Y|yes|YES) RUN_SQL="yes" ;;
    *) RUN_SQL="no" ;;
  esac
fi

if [ "$RUN_SQL" = "yes" ]; then
  if [ -z "$DB_NAME" ] || [ -z "$DB_USER" ]; then
    warn "DB_NAME or DB_USER not set. Skipping SQL migration."
  else
    if [ "$DB_MODE" = "container" ]; then
      say "Running SQL migration inside DB container: $DB_CONTAINER"
      docker inspect "$DB_CONTAINER" >/dev/null 2>&1 || die "DB container '$DB_CONTAINER' not found"
      docker cp "$BUNDLE_DIR_LOCAL/001_trip_closeout_schema.sql" "$DB_CONTAINER:/tmp/001_trip_closeout_schema.sql"
      if [ -n "$DB_PASS" ]; then
        docker exec "$DB_CONTAINER" sh -lc "mysql -u '$DB_USER' -p'$DB_PASS' '$DB_NAME' < /tmp/001_trip_closeout_schema.sql"
      else
        docker exec -it "$DB_CONTAINER" sh -lc "mysql -u '$DB_USER' -p '$DB_NAME' < /tmp/001_trip_closeout_schema.sql"
      fi
    else
      say "Running SQL migration from host into DB container: $DB_CONTAINER"
      docker inspect "$DB_CONTAINER" >/dev/null 2>&1 || die "DB container '$DB_CONTAINER' not found"
      docker cp "$BUNDLE_DIR_LOCAL/001_trip_closeout_schema.sql" "$DB_CONTAINER:/tmp/001_trip_closeout_schema.sql"
      if [ -n "$DB_PASS" ]; then
        docker exec "$DB_CONTAINER" sh -lc "mysql -u '$DB_USER' -p'$DB_PASS' '$DB_NAME' < /tmp/001_trip_closeout_schema.sql"
      else
        docker exec -it "$DB_CONTAINER" sh -lc "mysql -u '$DB_USER' -p '$DB_NAME' < /tmp/001_trip_closeout_schema.sql"
      fi
    fi
  fi
fi

say "Showing patch guidance snippets"
printf '\n===== edit_entry.php.patch =====\n'
docker exec "$MRBS_CONTAINER" sh -lc "sed -n '1,220p' '$BUNDLE_DIR_IN_CONTAINER/patches/edit_entry.php.patch'"
printf '\n===== edit_entry_handler.php.patch =====\n'
docker exec "$MRBS_CONTAINER" sh -lc "sed -n '1,220p' '$BUNDLE_DIR_IN_CONTAINER/patches/edit_entry_handler.php.patch'"
printf '\n===== view_entry.php.patch =====\n'
docker exec "$MRBS_CONTAINER" sh -lc "sed -n '1,220p' '$BUNDLE_DIR_IN_CONTAINER/patches/view_entry.php.patch'"

say "Patch assets are staged. Manual patching is still required for the three PHP files."

if [ "$RESTART_AFTER" = "yes" ]; then
  say "Restarting MRBS container"
  docker restart "$MRBS_CONTAINER" >/dev/null
fi

cat <<EOM

Done.

Backups:
  $BACKUP_DIR

Helper copied to:
  $WEBROOT/trip_closeout.inc.php

Patch snippets inside container:
  $BUNDLE_DIR_IN_CONTAINER/patches/edit_entry.php.patch
  $BUNDLE_DIR_IN_CONTAINER/patches/edit_entry_handler.php.patch
  $BUNDLE_DIR_IN_CONTAINER/patches/view_entry.php.patch

Next:
  1. Open these three files inside the MRBS container:
     - $WEBROOT/edit_entry.php
     - $WEBROOT/edit_entry_handler.php
     - $WEBROOT/view_entry.php
  2. Apply the snippet logic from the patch files.
  3. Test as admin, requester, and assigned driver.

Useful one-liner to open a shell in the container:
  docker exec -it $MRBS_CONTAINER sh

If you want to run SQL non-interactively next time, use for example:
  DB_CONTAINER=MRBS-DB DB_NAME=mrbs DB_USER=mrbs DB_PASS='yourpass' RUN_SQL=yes bash install_mrbs_trip_closeout.sh

EOM
