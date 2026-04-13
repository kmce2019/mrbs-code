docker cp /home/kevin/mrbs.sql mrbs-db:/mrbs.sql
sudo docker cp /home/kevin/mrbs.sql mrbs-db:/mrbs.sql
docker cp /home/kevin/mrbs.sql mrbs-db:/tmp/mrbs.sql
docker ps --format "table {{.Names}}\t{{.Image}}"
docker ps
sudo docker restart MRBS
sudo docker exec -it MRBS php -r 'echo password_hash("TempPass123!", PASSWORD_DEFAULT), PHP_EOL;'
docker exec -it MRBS sh
sudo docker ps
su -
sudo docker exec -it MRBS sh
docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Names}}"
sudo docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Names}}"
docker exec -it MRBS-DB sh
sudo docker exec -it MRBS-DB sh
sudo docker exec -it MRBS-DB mariadb -u root -p
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS-DB mariadb -u root -p
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh -c "sed -n '1,40p' /config/www/config.inc.php"
sudo docker restart MRBS
sudo docker exec -it MRBS sh -c "sed -n '1,40p' /config/www/config.inc.php"
<?php
$auth['type'] = 'db';
$mrbs_company = "Grapeland ISD";
/**************************************************************************
sudo docker exec -it MRBS-DB mariadb -u root -p mrbs
sudo docker exec -it MRBS sh
sed -i 's/Rooms/Vehicles/g' /app/www/public/lang/lang.en
sed -i 's/Room/Vehicle/g' /app/www/public/lang/lang.en
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
docker exec -it MRBS ping GISD-3.grapelandisd.local
sudo docker exec -it MRBS ping GISD-3.grapelandisd.local
nano /config/www/config.inc.php
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker exec -it MRBS sh -c "getent hosts GISD-3.grapelandisd.local; nc -zv GISD-3.grapelandisd.local 389"
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker logs -f MRBS
sudo docker logs MRBS
sudo docker exec -it MRBS sh
ldapsearch -x -H ldap://GISD-3.grapelandisd.local -D "svc-mrbs@grapelandisd.local" -w SERVICE_ACCOUNT_PASSWORD -b "DC=grapelandisd,DC=local" "(sAMAccountName=kgardner)"
usermod: no changes
───────────────────────────────────────
To support LSIO projects visit:
https://www.linuxserver.io/donate/
───────────────────────────────────────
GID/UID
───────────────────────────────────────
User UID:    1026
User GID:    100
───────────────────────────────────────
grep: /config/nginx/**/*.conf: No such file or directory
using keys found in /config/keys
Waiting for DB to be available
*** DB init ***
[custom-init] No custom files found, skipping...
[ls.io-init] done.
sudo apt install ldap-utils
ldapsearch -x -H ldap://GISD-3.grapelandisd.local -D "svc-mrbs@grapelandisd.local" -w 'Grapeland2026!' -b "DC=grapelandisd,DC=local" "(sAMAccountName=kgardner)"
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS-DB mariadb -u root -p mrbs
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS-DB mariadb -u root -p mrbs
sudo docker logs MRBS --tail 200
sudo docker exec -it MRBS sh -c "nc -zv smtp.gmail.com 587"
sudo docker exec -it MRBS sh -c "grep -n \"mail_settings\\|admin_email\" /config/www/config.inc.php"
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh -c "grep -n \"mail_settings\\|admin_email\" /config/www/config.inc.php"
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh -c "tail -n 20 /config/www/config.inc.php"
sudo docker exec -it MRBS sh -c "grep -n \"\$auth\['type'\]\|\$auth\['admin'\]\|\$disable_menu_items_for_non_admins\" /config/www/config.inc.php"
sudo docker exec -it MRBS sh -c "grep -n \"\$auth\['type'\]\|\$auth\['admin'\]\|\$disable_menu_items_for_non_admins\" /config/www/config.inc.php"sudo docker exec -it MRBS-DB mariadb -u root -p mrbs -e "SELECT id,name,display_name,email,level FROM mrbs_users;"
sudo docker exec -it MRBS-DB mariadb -u root -p mrbs -e "SELECT id,name,display_name,email,level FROM mrbs_users;"
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh -c "grep -n \"\$auth\['admin'\]\" /config/www/config.inc.php"
sudo docker exec -it MRBS sh -c "grep -n \"\$auth\['admin'\]\" /config/www/config.inc.php"sudo docker exec -it MRBS sh -c "nc -zv smtp.gmail.com 587"
sudo docker exec -it MRBS sh -c "nc -zv smtp.gmail.com 587"
sudo docker exec -it MRBS php -r 'fsockopen("smtp.gmail.com", 587, $e, $s, 10) ? print("OK\n") : print("FAIL: $e $s\n");'
sudo docker exec -it MRBS sh -c "grep -Rni \"notify_admin_on_booking\\|smtp.gmail.com\\|from_name\\|mail_settings\\|smtp_settings\" /app/www /config 2>/dev/null"
sudo docker exec -it MRBS sh
kevin@portainer:~$ sudo docker exec -it MRBS sh -c "nc -zv smtp.gmail.com 587"
Connection to smtp.gmail.com (142.250.115.108) 587 port [tcp/submission] succeeded!
kevin@portainer:~$ sudo docker exec -it MRBS php -r 'fsockopen("smtp.gmail.com", 587, $e, $s, 10) ? print("OK\n") : print("FAIL: $e $s\n");'
OK
kevin@portainer:~$ sudo docker exec -it MRBS sh -c "grep -Rni \"notify_admin_on_booking\\|smtp.gmail.com\\|from_name\\|mail_settings\\|smtp_settings\" /app/www /config 2>/dev/null"
/app/www/public/edit_entry.php:1021:  global $mail_settings;
/app/www/public/edit_entry.php:1030:        ->setChecked($mail_settings['no_mail_default']);
/app/www/public/edit_entry.php:1805:    ($mail_settings['allow_no_mail'] || (is_book_admin() && $mail_settings['allow_admins_no_mail'])))
/app/www/public/internalconfig.inc.php:26:if (isset($mail_settings['admin_all']))
/app/www/public/internalconfig.inc.php:28:  // We won't set $mail_settings['on_new'] because the default is TRUE
/app/www/public/internalconfig.inc.php:31:  $message = 'Please check your config file.   The variable $mail_settings["admin_all"] ' .
/app/www/public/internalconfig.inc.php:32:             'is no longer used and has been replaced by $mail_settings["on_new"], ' .
/app/www/public/internalconfig.inc.php:33:             '$mail_settings["on_change"] and $mail_settings["on_delete"].';
/app/www/public/internalconfig.inc.php:35:  $mail_settings['on_change'] = (bool) $mail_settings['admin_all'];
/app/www/public/internalconfig.inc.php:38:if (isset($mail_settings['admin_on_delete']))
/app/www/public/internalconfig.inc.php:40:  $message = 'Please check your config file.   The variable $mail_settings["admin_on_delete"] ' .
/app/www/public/internalconfig.inc.php:41:             'is no longer used and has been replaced by $mail_settings["on_delete"].';
/app/www/public/internalconfig.inc.php:43:  $mail_settings['on_delete'] = (bool) $mail_settings['admin_on_delete'];
/app/www/public/functions_mail.inc:21:global $mail_settings;
/app/www/public/functions_mail.inc:23:if ($mail_settings['icalendar'])
/app/www/public/functions_mail.inc:32:  global $mail_settings;
/app/www/public/functions_mail.inc:34:  return ($mail_settings['admin_on_bookings'] or
/app/www/public/functions_mail.inc:35:          $mail_settings['area_admin_on_bookings'] or
/app/www/public/functions_mail.inc:36:          $mail_settings['room_admin_on_bookings'] or
/app/www/public/functions_mail.inc:37:          $mail_settings['booker'] or
/app/www/public/functions_mail.inc:38:          $mail_settings['book_admin_on_approval']);
/app/www/public/functions_mail.inc:44:  global $mail_settings;
/app/www/public/functions_mail.inc:46:  return $mail_settings['admin_lang'] ?? 'en';
/app/www/public/functions_mail.inc:176:  global $mail_settings;
/app/www/public/functions_mail.inc:178:  return ($mail_settings['admin_on_bookings'] && isset($mail_settings['recipients'])) ? $mail_settings['recipients'] : '';
/app/www/public/functions_mail.inc:352:  global $mail_settings, $standard_fields;
/app/www/public/functions_mail.inc:483:  if ($mail_settings['details'])
/app/www/public/functions_mail.inc:725:  global $approval_enabled, $mail_settings;
/app/www/public/functions_mail.inc:731:  if (!empty($mail_settings['cc']))
/app/www/public/functions_mail.inc:733:    $cc = address_merge($cc, $mail_settings['cc']);
/app/www/public/functions_mail.inc:740:    if ($mail_settings['use_reply_to'] && !empty($mrbs_user->email))
/app/www/public/functions_mail.inc:751:      if ($mail_settings['use_from_for_all_mail'])
/app/www/public/functions_mail.inc:764:    $from = (isset($mail_settings['from'])) ? $mail_settings['from'] : null;
/app/www/public/functions_mail.inc:782:  if ($mail_settings['area_admin_on_bookings'])
/app/www/public/functions_mail.inc:799:  if ($mail_settings['room_admin_on_bookings'])
/app/www/public/functions_mail.inc:816:  if ($mail_settings['booker'])
/app/www/public/functions_mail.inc:858:  global $mail_settings, $enable_periods;
/app/www/public/functions_mail.inc:885:  if ($mail_settings['icalendar'] && !$enable_periods)
/app/www/public/functions_mail.inc:920:  if ($mail_settings['html'])
/app/www/public/functions_mail.inc:932:  if ($mail_settings['icalendar'] &&
/app/www/public/functions_mail.inc:943:    $attachment['name']     = $mail_settings['ics_filename'] . ".ics";
/app/www/public/functions_mail.inc:970:  global $mail_settings, $enable_periods;
/app/www/public/functions_mail.inc:973:  if ($mail_settings['debug'])
/app/www/public/functions_mail.inc:997:  if ($mail_settings['icalendar'] && !$enable_periods)
/app/www/public/functions_mail.inc:1014:  if ($mail_settings['html'])
/app/www/public/functions_mail.inc:1021:  if ($mail_settings['icalendar'] && !$enable_periods)
/app/www/public/functions_mail.inc:1027:    $attachment['name']     = $mail_settings['ics_filename'] . ".ics";
/app/www/public/functions_mail.inc:1043:  global $mail_settings;
/app/www/public/functions_mail.inc:1045:  if (isset($mail_settings['debug_output']) &&
/app/www/public/functions_mail.inc:1046:      ($mail_settings['debug_output'] == 'browser'))
/app/www/public/functions_mail.inc:1065:  global $mail_settings;
/app/www/public/functions_mail.inc:1067:  if ($mail_settings['debug'])
/app/www/public/mrbs_sql.inc:2480:  global $max_rep_entrys, $enable_periods, $resolution, $mail_settings;
/app/www/public/mrbs_sql.inc:2810:      if ((isset($id) && $mail_settings['on_change']) ||
/app/www/public/mrbs_sql.inc:2811:          (!isset($id) && $mail_settings['on_new']))
/app/www/public/edit_entry_handler.php:406:  if (!$mail_settings['allow_no_mail'] &&
/app/www/public/edit_entry_handler.php:407:      (!is_book_admin($rooms) || !$mail_settings['allow_admins_no_mail']))
/app/www/public/view_entry.php:718:    $content_type = "application/ics;  charset=" . get_charset(). "; name=\"" . $mail_settings['ics_filename'] . ".ics\"";
/app/www/public/view_entry.php:719:    $content_disposition = "attachment; filename=\"" . $mail_settings['ics_filename'] . ".ics\"";
/app/www/public/language.inc:722:  global $mail_settings, $default_language_tokens;
/app/www/public/language.inc:729:    $mail_lang = Locale::lookup($available_languages, $mail_settings['admin_lang'], false, $default_language_tokens ?? 'en');
/app/www/public/systemdefaults.inc.php:158:// NOTE:  there are more email addresses in $mail_settings below.    You can also give
/app/www/public/systemdefaults.inc.php:1593:$mail_settings['from'] = 'admin_email@your.org';
/app/www/public/systemdefaults.inc.php:1599:$mail_settings['use_from_for_all_mail'] = false;
/app/www/public/systemdefaults.inc.php:1603:$mail_settings['use_reply_to'] = true;
/app/www/public/systemdefaults.inc.php:1610:$mail_settings['organizer'] = 'mrbs@your.org';
/app/www/public/systemdefaults.inc.php:1614:$mail_settings['recipients'] = 'admin_email@your.org';
/app/www/public/systemdefaults.inc.php:1618:$mail_settings['cc'] = '';
/app/www/public/systemdefaults.inc.php:1623:$mail_settings['treat_cc_as_to'] = false;
/app/www/public/systemdefaults.inc.php:1634:$mail_settings['admin_on_bookings']      = false;  // the addresses defined by $mail_settings['recipients'] below
/app/www/public/systemdefaults.inc.php:1635:$mail_settings['area_admin_on_bookings'] = false;  // the area administrator
/app/www/public/systemdefaults.inc.php:1636:$mail_settings['room_admin_on_bookings'] = false;  // the room administrator
/app/www/public/systemdefaults.inc.php:1637:$mail_settings['booker']                 = false;  // the person making the booking
/app/www/public/systemdefaults.inc.php:1638:$mail_settings['book_admin_on_approval'] = false;  // the booking administrator when booking approval is enabled
/app/www/public/systemdefaults.inc.php:1647:// (Note:  (a) the variables $mail_settings['admin_on_delete'] and
/app/www/public/systemdefaults.inc.php:1648:// $mail_settings['admin_all'], which were used in MRBS versions 1.4.5 and
/app/www/public/systemdefaults.inc.php:1651:// value of $mail_settings['on_new'] is true for compatibility with MRBS 1.4.5
/app/www/public/systemdefaults.inc.php:1655:$mail_settings['on_new']    = true;   // when an entry is created
/app/www/public/systemdefaults.inc.php:1656:$mail_settings['on_change'] = false;  // when an entry is changed
/app/www/public/systemdefaults.inc.php:1657:$mail_settings['on_delete'] = false;  // when an entry is deleted
/app/www/public/systemdefaults.inc.php:1662:$mail_settings['allow_no_mail']        = false;
/app/www/public/systemdefaults.inc.php:1663:$mail_settings['allow_admins_no_mail'] = false;  // Ignored if 'allow_no_mail' is true
/app/www/public/systemdefaults.inc.php:1664:$mail_settings['no_mail_default'] = false; // Default value for the 'no mail' checkbox.
/app/www/public/systemdefaults.inc.php:1673:$mail_settings['details']   = false; // Set to true if you want full booking details;
/app/www/public/systemdefaults.inc.php:1675:$mail_settings['html']      = false; // Set to true if you want HTML mail
/app/www/public/systemdefaults.inc.php:1676:$mail_settings['icalendar'] = false; // Set to true to include iCalendar details
/app/www/public/systemdefaults.inc.php:1692:$mail_settings['admin_lang'] = 'en';   // Default is 'en'.
/app/www/public/systemdefaults.inc.php:1699:// pages in MRBS.  But if you have set $mail_settings['booker'] above to true, MRBS will
/app/www/public/systemdefaults.inc.php:1705:$mail_settings['domain'] = '';
/app/www/public/systemdefaults.inc.php:1706:// If you use $mail_settings['domain'] above and the username returned by mrbs contains extra
/app/www/public/systemdefaults.inc.php:1709:$mail_settings['username_suffix'] = '';
/app/www/public/systemdefaults.inc.php:1716:$mail_settings['admin_backend'] = 'mail';
/app/www/public/systemdefaults.inc.php:1724:$sendmail_settings['path'] = '/usr/bin/sendmail';
/app/www/public/systemdefaults.inc.php:1727:$sendmail_settings['args'] = '';
/app/www/public/systemdefaults.inc.php:1734:$mail_settings['qmail']['qmail-inject-path'] = '/usr/bin/qmail-inject';
/app/www/public/systemdefaults.inc.php:1741:$smtp_settings['host'] = 'localhost';  // SMTP server
/app/www/public/systemdefaults.inc.php:1742:$smtp_settings['port'] = 25;           // SMTP port number
/app/www/public/systemdefaults.inc.php:1743:$smtp_settings['auth'] = false;        // Whether to use SMTP authentication
/app/www/public/systemdefaults.inc.php:1744:$smtp_settings['secure'] = '';         // Encryption method: '', 'tls' or 'ssl' - note that 'tls' means TLS is used even if the SMTP
/app/www/public/systemdefaults.inc.php:1748:$smtp_settings['username'] = '';       // Username (if using authentication)
/app/www/public/systemdefaults.inc.php:1749:$smtp_settings['password'] = '';       // Password (if using authentication)
/app/www/public/systemdefaults.inc.php:1755:$smtp_settings['hostname'] = '';
/app/www/public/systemdefaults.inc.php:1758:// Default is $smtp_settings['hostname']. If $smtp_settings['hostname'] is empty, PHPMailer attempts to find
/app/www/public/systemdefaults.inc.php:1759:// one with the same method described above for $smtp_settings['hostname'].
/app/www/public/systemdefaults.inc.php:1760:$smtp_settings['helo'] = '';
/app/www/public/systemdefaults.inc.php:1762:$smtp_settings['disable_opportunistic_tls'] = false; // Set this to true to disable
/app/www/public/systemdefaults.inc.php:1768:$smtp_settings['ssl_verify_peer'] = true;
/app/www/public/systemdefaults.inc.php:1769:$smtp_settings['ssl_verify_peer_name'] = true;
/app/www/public/systemdefaults.inc.php:1770:$smtp_settings['ssl_allow_self_signed'] = false;
/app/www/public/systemdefaults.inc.php:1777:$mail_settings['ics_filename'] = "booking";
/app/www/public/systemdefaults.inc.php:1785:$mail_settings['rate_limit'] = 0;  // emails per second (float or int)
/app/www/public/systemdefaults.inc.php:1791:$mail_settings['debug'] = false;
/app/www/public/systemdefaults.inc.php:1793:$mail_settings['debug_output'] = 'log';
/app/www/public/systemdefaults.inc.php:1797:$mail_settings['disabled'] = false;
/app/www/public/functions_ical.inc:251:  global $auth, $mail_settings;
/app/www/public/functions_ical.inc:294:    if (isset($mail_settings['username_suffix']))
/app/www/public/functions_ical.inc:296:      $name .= $mail_settings['username_suffix'];
/app/www/public/functions_ical.inc:441:  global $mail_settings, $timezone, $default_area_room_delimiter;
/app/www/public/functions_ical.inc:534:  $organizer = PHPMailer::parseAddresses($mail_settings['organizer'], true, get_mail_charset())[0];
/app/www/public/del_entry.php:63:    $notify_by_email = $mail_settings['on_delete'] && need_to_send_mail();
/app/www/public/lib/MRBS/User.php:118:    global $mail_settings;
/app/www/public/lib/MRBS/User.php:129:      if (isset($mail_settings['username_suffix']) && ($mail_settings['username_suffix'] !== ''))
/app/www/public/lib/MRBS/User.php:131:        $suffix = $mail_settings['username_suffix'];
/app/www/public/lib/MRBS/User.php:139:      if (isset($mail_settings['domain']) && ($mail_settings['domain'] !== ''))
/app/www/public/lib/MRBS/User.php:142:        // to be included in $mail_settings['domain'], and we still allow this for backwards
/app/www/public/lib/MRBS/User.php:144:        $domain = ltrim($mail_settings['domain'], '@');
/app/www/public/lib/MRBS/MailQueue.php:49:    global $mail_settings;
/app/www/public/lib/MRBS/MailQueue.php:53:    if ($mail_settings['disabled'])
/app/www/public/lib/MRBS/MailQueue.php:150:    global $mail_settings, $sendmail_settings, $smtp_settings;
/app/www/public/lib/MRBS/MailQueue.php:158:    if ($mail_settings['debug'])
/app/www/public/lib/MRBS/MailQueue.php:160:      $mail->Debugoutput = ($mail_settings['debug_output'] == 'log') ? 'error_log' : 'html';
/app/www/public/lib/MRBS/MailQueue.php:168:      if (isset($mail_settings['from']))
/app/www/public/lib/MRBS/MailQueue.php:170:        $addresses['from'] = $mail_settings['from'];
/app/www/public/lib/MRBS/MailQueue.php:174:        trigger_error('$mail_settings["from"] has not been set in the config file.', E_USER_NOTICE);
/app/www/public/lib/MRBS/MailQueue.php:178:    switch ($mail_settings['admin_backend'])
/app/www/public/lib/MRBS/MailQueue.php:185:        if (isset($mail_settings['qmail']['qmail-inject-path']))
/app/www/public/lib/MRBS/MailQueue.php:187:          $mail->Sendmail = $mail_settings['qmail']['qmail-inject-path'];
/app/www/public/lib/MRBS/MailQueue.php:192:        $mail->Sendmail = $sendmail_settings['path'];
/app/www/public/lib/MRBS/MailQueue.php:193:        if (isset($sendmail_settings['args']) && ($sendmail_settings['args'] !== ''))
/app/www/public/lib/MRBS/MailQueue.php:195:          $mail->Sendmail .= ' ' . $sendmail_settings['args'];
/app/www/public/lib/MRBS/MailQueue.php:200:        $mail->Host = $smtp_settings['host'];
/app/www/public/lib/MRBS/MailQueue.php:201:        $mail->Port = $smtp_settings['port'];
/app/www/public/lib/MRBS/MailQueue.php:202:        $mail->SMTPAuth = $smtp_settings['auth'];
/app/www/public/lib/MRBS/MailQueue.php:203:        $mail->SMTPSecure = $smtp_settings['secure'];
/app/www/public/lib/MRBS/MailQueue.php:204:        $mail->Username = $smtp_settings['username'];
/app/www/public/lib/MRBS/MailQueue.php:205:        $mail->Password = $smtp_settings['password'];
/app/www/public/lib/MRBS/MailQueue.php:206:        $mail->Hostname = $smtp_settings['hostname'];
/app/www/public/lib/MRBS/MailQueue.php:207:        $mail->Helo = $smtp_settings['helo'];
/app/www/public/lib/MRBS/MailQueue.php:208:        if ($smtp_settings['disable_opportunistic_tls'])
/app/www/public/lib/MRBS/MailQueue.php:216:            'verify_peer' => $smtp_settings['ssl_verify_peer'],
/app/www/public/lib/MRBS/MailQueue.php:217:            'verify_peer_name' => $smtp_settings['ssl_verify_peer_name'],
/app/www/public/lib/MRBS/MailQueue.php:218:            'allow_self_signed' => $smtp_settings['ssl_allow_self_signed']
/app/www/public/lib/MRBS/MailQueue.php:224:        trigger_error("Unknown mail backend '" . $mail_settings['admin_backend'] . "'." .
/app/www/public/lib/MRBS/MailQueue.php:261:        if ($mail_settings['treat_cc_as_to'])
/app/www/public/lib/MRBS/MailQueue.php:395:      mail_debug("Using backend '" . $mail_settings['admin_backend'] . "'");
/app/www/public/lib/MRBS/MailQueue.php:402:      if (!empty($mail_settings['rate_limit']))
/app/www/public/lib/MRBS/MailQueue.php:409:          $min_gap = round($last_n_addresses/$mail_settings['rate_limit'], 6);
/app/www/public/lib/MRBS/MailQueue.php:434:        in_array($mail_settings['admin_backend'], array('mail', 'sendmail')))
/app/www/public/lib/MRBS/MailQueue.php:437:          "disabled and you are using the '" . $mail_settings['admin_backend'] . "' backend.  " .
/app/www/public/lib/MRBS/Auth/Auth.php:293:    global $mail_settings;
/app/www/public/lib/MRBS/Auth/Auth.php:303:    if (isset($mail_settings['username_suffix']) && ($mail_settings['username_suffix'] !== ''))
/app/www/public/lib/MRBS/Auth/Auth.php:305:      $suffix = $mail_settings['username_suffix'];
/app/www/public/lib/MRBS/Auth/Auth.php:313:    if (isset($mail_settings['domain']) && ($mail_settings['domain'] !== ''))
/app/www/public/lib/MRBS/Auth/Auth.php:316:      // to be included in $mail_settings['domain'], and we still allow this for backwards
/app/www/public/lib/MRBS/Auth/Auth.php:318:      $domain = ltrim($mail_settings['domain'], '@');
/app/www/public/lib/MRBS/Auth/AuthDb.php:510:    global $auth, $mail_settings;
/app/www/public/lib/MRBS/Auth/AuthDb.php:520:        'from'  => $mail_settings['from']
/config/www/config.inc.php:66:$mail_settings['host'] = 'smtp.gmail.com';
/config/www/config.inc.php:67:$mail_settings['port'] = 587;
/config/www/config.inc.php:68:$mail_settings['auth'] = true;
/config/www/config.inc.php:69:$mail_settings['username'] = 'kgardner@grapelandisd.net';
/config/www/config.inc.php:70:$mail_settings['password'] = 'rszn jnvt qrjm ylma';
/config/www/config.inc.php:71:$mail_settings['secure'] = 'tls';
/config/www/config.inc.php:72:$mail_settings['from'] = 'kgardner@grapelandisd.net';
/config/www/config.inc.php:73:$mail_settings['from_name'] = 'Grapeland ISD Vehicle Reservations';
/config/www/config.inc.php:74:$mail_settings['notify_admin_on_booking'] = true;
/config/www/config.inc.php:75:$mail_settings['notify_admin_on_cancel'] = true;

sudo docker exec -it MRBS sh -c "php -m | grep -i openssl; grep -Rni \"PHPMailer\\|SMTP\\|sendmail\" /app/www 2>/dev/null | head -50"
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS-DB mariadb -u root -p mrbs
exit
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
ls
sudo docker ps
sudo docker MRBS
sudo exec docker MRBS
sudo docker exec MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker exec MRBS sh -c 'cp /config/www/config.inc.php /config/www/config.inc.php.bak.$(date +%F-%H%M%S)'
docker exec MRBS sh -c 'cat >> /config/www/config.inc.php <<'\''EOF'\''
$mrbs_company = "Grapeland ISD";
$mrbs_company_url = "http://vehiclerequests.grapelandisd.local";
$mrbs_company_more_info = "Vehicle Booking System";
$vocab_override["mrbs"] = "Grapeland ISD Vehicle Booking System";
EOF'
sudo docker exec MRBS sh -c 'cat >> /config/www/config.inc.php <<'\''EOF'\''
$mrbs_company = "Grapeland ISD";
$mrbs_company_url = "http://vehiclerequests.grapelandisd.local";
$mrbs_company_more_info = "Vehicle Booking System";
$vocab_override["mrbs"] = "Grapeland ISD Vehicle Booking System";
EOF'
sudo docker restart MRBS
sudo docker exec MRBS sh -c 'cat >> /config/www/config.inc.php <<'\''EOF'\''
$vocab_override["en"]["mrbs"] = "Grapeland ISD Vehicle Booking System";
EOF'
sudo docker restart MRBS
sudo docker exec MRBS sh -c 'tail -20 /config/www/config.inc.php'
ls
cd ..
ls
cd kevin
ls
cd ..
ls
cd ke
sudo docker cp /tmp/logo.png MRBS:/config/www/logo.png
sudo docker exec MRBS ls -l /config/www/logo.png
sudo docker exec MRBS sh -c 'ls -l /app/www && ls -l /app/www/public'
sudo docker cp /tmp/logo.png MRBS:/app/www/public/logo.png
sudo docker exec MRBS ls -l /app/www/public/logo.png
sudo docker restart MRBS
cd /app/www/public
nano /config/www/custom.css
/config/www/custom.css
sudo docker exec -it MRBS sh
sudo docker restart MRBS
exit
sudo docker exec MRBS sh -c 'cp /config/www/custom.css /app/www/public/custom.css'
docker exec MRBS sh -c 'ls -l /config/www/custom.css'
sudo docker exec MRBS sh -c 'ls -l /config/www/custom.css'
sudo docker restart MRBS
docker exec MRBS sh -c 'ls -l /config/www/custom.css'
docker exec -it MRBS sh
cd /app/www/public
ls
cd /app/www/public
lscd /app/www/public
ls
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec MRBS sh -c 'grep -n "custom_css" /app/www/public/config.inc.php /config/www/config.inc.php 2>/dev/null'
sudo docker exec MRBS sh -c 'ls -l /app/www/public/custom.css /config/www/custom.css 2>/dev/null'
sudo docker exec MRBS sh -c 'find /app/www/public -maxdepth 2 -type f | grep -E "config.inc.php|custom.css|index.php"'
sudo docker exec MRBS sh -c 'grep -n "custom_css" /app/www/public/config.inc.php /config/www/config.inc.php 2>/dev/null'
/app/www/public/config.inc.php:72:$custom_css = "custom.css";
kevin@portainer:~$ sudo docker exec MRBS sh -c 'ls -l /app/www/public/custom.css /config/www/custom.css 2>/dev/null'
-rw-r--r-- 1 abc abc  43 Mar 26 20:02 /app/www/public/custom.css
-rw-r--r-- 1 abc abc 221 Mar 26 19:58 /config/www/custom.css
kevin@portainer:~$ sudo docker exec MRBS sh -c 'find /app/www/public -maxdepth 2 -type f | grep -E "config.inc.php|custom.css|index.php"'
/app/www/public/internalconfig.inc.php
/app/www/public/index.php
/app/www/public/config.inc.php-sample
/app/www/public/config.inc.php
/app/www/public/custom.css
sudo docker exec -it MRBS shsudo docker exec -it MRBS sh
sudo docker exec -it MRBS sh
sudo docker restart MRBS
curl -s http://10.2.71.68:8888 | grep -i custom.css
sudo docker exec MRBS sh -c 'grep -Rni "stylesheet\|custom.css\|<head\|</head>" /app/www/public 2>/dev/null | head -50'
sudo docker exec MRBS sh -c 'grep -Rni "id=\"header\"\|<header\|class=\"header\"" /app/www/public 2>/dev/null | head -50'
sudo docker exec -it MRBS sh
vi /app/www/public/config.inc.php
sudo docker exec -it MRBS sh
sudo docker restart MRBS
curl -s http://10.2.71.68:8888 | grep -i custom.css
ls
sudo nano install_mrbs_trip_closeout.sh
bash install_mrbs_trip_closeout.sh 
ls
sudo rm install_mrbs_trip_closeout.sh 
ls
cat > ~/install_mrbs_trip_closeout.sh <<'EOF'
#!/usr/bin/env bash
set -euo pipefail

MRBS_CONTAINER="${MRBS_CONTAINER:-MRBS}"
WEBROOT="${WEBROOT:-/app/www/public}"

echo "== Checking MRBS container =="
docker ps --format '{{.Names}}' | grep -Fx "$MRBS_CONTAINER" >/dev/null

echo "== Checking web root =="
docker exec "$MRBS_CONTAINER" test -d "$WEBROOT"

echo "== Creating backup dir =="
TS="$(date +%Y%m%d-%H%M%S)"
docker exec "$MRBS_CONTAINER" mkdir -p "$WEBROOT/backup-$TS"

for f in edit_entry.php edit_entry_handler.php view_entry.php; do
  echo "Backing up $f"
  docker exec "$MRBS_CONTAINER" sh -lc "cp '$WEBROOT/$f' '$WEBROOT/backup-$TS/$f'"
done

echo "== Installing helper include =="
docker exec -i "$MRBS_CONTAINER" sh -lc "cat > '$WEBROOT/trip_closeout.inc.php'" <<'PHP'
<?php
function trip_closeout_calculate_miles($odo_out, $odo_in)
{
    if ($odo_out === null || $odo_out === '' || $odo_in === null || $odo_in === '') {
        return null;
    }

    $odo_out = (int)$odo_out;
    $odo_in  = (int)$odo_in;

    if ($odo_in < $odo_out) {
        throw new Exception("Odometer IN cannot be less than Odometer OUT");
    }

    return $odo_in - $odo_out;
}

function trip_closeout_status($current_status, $odo_out, $odo_in)
{
    if ($odo_out !== null && $odo_out !== '' && $odo_in !== null && $odo_in !== '') {
        return 'completed';
    }

    if ($odo_out !== null && $odo_out !== '') {
        return 'in_progress';
    }

    return $current_status ?: 'approved';
}
PHP

echo
echo "Helper installed at: $WEBROOT/trip_closeout.inc.php"
echo "Backups stored in:   $WEBROOT/backup-$TS"
echo
echo "Next:"
echo "1. Run SQL in the DB container"
echo "2. Edit:"
echo "   $WEBROOT/edit_entry.php"
echo "   $WEBROOT/edit_entry_handler.php"
echo "   $WEBROOT/view_entry.php"
echo "3. Restart container: docker restart $MRBS_CONTAINER"
EOF

chmod +x ~/install_mrbs_trip_closeout.sh
~/install_mrbs_trip_closeout.sh
whoami
echo $HOME
pwd
ls -ld ~ /tmp /var/tmp
mount | grep -E '/tmp|/var/tmp|home'
df -h
kevin
/home/kevin
drwxr-x--- 4 kevin kevin 4096 Mar 31 18:57 /home/kevin
drwxrwxrwt 9 root  root  4096 Apr  1 20:52 /tmp
drwxrwxrwt 9 root  root  4096 Apr  1 10:16 /var/tmp
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           197M  8.5M  189M   5% /run
/dev/sda2        59G   58G     0 100% /
tmpfs           984M     0  984M   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs           197M   12K  197M   1% /run/user/1000
tmpfs           197M   12K  197M   1% /run/user/1001
sudo du -xhd1 / | sort -h
sudo du -xhd1 /var | sort -h
sudo du -xhd1 /home | sort -h
sudo du -xhd1 / | sort -h
sudo du -xhd1 /var | sort -h
sudo du -xhd1 /home | sort -h
docker system df
sudo journalctl --disk-usage
sudo du -xhd1 /var/lib/docker | sort -h
sudo du -xhd1 /var/log | sort -h
sudo docker system df
sudo journalctl --disk-usage
sudo du -xhd1 /var/lib/docker | sort -h
sudo du -xhd1 /var/log | sort -h
su -
su docker system df
sudo docker system df
sudo docker image prune -a
sudo docker container prune
sudo docker volume prune
sudo docker builder prune -a
sudo docker system prune -a --volumes
sudo journalctl --vacuum-time=7d
sudo journalctl --vacuum-size=200M
sudo journalctl --vacuum-time=7d
sudo journalctl --vacuum-size=200Msudo apt clean
sudo apt clean
sudo find /var/log -type f -size +100M -ls
df -h /
sudo du -xhd1 /mnt | sort -h
sudo du -xhd1 /mnt/* | sort -h
sudo rm -rf /mnt/viseron/recordings/*
sudo rm -rf /mnt/viseron/*
df -h /
sudo docker exec -it MRBS sh
docker exec -it MRBS-DB mysql -u root -p
sudo docker exec -it MRBS-DB mysql -u root -p
sudo docker ps
docker exec -it MRBS-DB mysql -u root -p
sudodocker exec -it MRBS-DB mysql -u root -p
sudo docker exec -it MRBS-DB mysql -u root -p
docker volume ls | grep -Ei 'mrbs|maria|mysql'
sudo docker volume ls | grep -Ei 'mrbs|maria|mysql'
docker volume ls | grep -Ei 'mrbs|maria|mysql'
sudo sudo docker volume ls
sudo docker volume ls | grep -Ei 'mrbs|maria|mysql|db'
sudo docker exec MRBS sh -lc "grep -nE 'db|mysql|mysqli|host|user|pass|database' /app/www/public/config.inc.php"
6:// Which database system: "pgsql"=PostgreSQL, "mysql"=MySQL
7:$dbsys = getenv('DB_TYPE') ? getenv('DB_TYPE') : "mysql";
8:// Hostname of database server. For pgsql, can use "" instead of localhost
9:// to use Unix Domain Sockets instead of TCP/IP. For mysql "localhost"
10:// tells the system to use Unix Domain Sockets, and $db_port will be ignored;
12:$db_host = getenv('DB_HOST');
13:// If you need to use a non standard port for the database connection you
15:// $db_port = 1234;
17:$db_database = getenv('DB_DATABASE');
19:// than one schema in your database and also you are using the same MRBS table names in
21://$db_schema = "public";
22:// Database login user name:
23:$db_login = getenv('DB_USER');
24:// Database login password:
25:$db_password = getenv('DB_PASS');
27:// one database is available
28:$db_tbl_prefix = "mrbs_";
29:// Set $db_persist to TRUE to use PHP persistent (pooled) database connections.  Note
35:$db_persist = false;
39:$disable_menu_items_for_non_admins = ["rooms", "user_list"];
6:// Which database system: "pgsql"=PostgreSQL, "mysql"=MySQL
7:$dbsys = getenv('DB_TYPE') ? getenv('DB_TYPE') : "mysql";
8:// Hostname of database server. For pgsql, can use "" instead of localhost
9:// to use Unix Domain Sockets instead of TCP/IP. For mysql "localhost"
10:// tells the system to use Unix Domain Sockets, and $db_port will be ignored;
12:$db_host = getenv('DB_HOST');
13:// If you need to use a non standard port for the database connection you
15:// $db_port = 1234;
17:$db_database = getenv('DB_DATABASE');
19:// than one schema in your database and also you are using the same MRBS table names in
21://$db_schema = "public";
22:// Database login user name:
23:$db_login = getenv('DB_USER');
24:// Database login password:
25:$db_password = getenv('DB_PASS');
27:// one database is available
28:$db_tbl_prefix = "mrbs_";
29:// Set $db_persist to TRUE to use PHP persistent (pooled) database connections.  Note
35:$db_persist = false;
39:$disable_menu_items_for_non_admins = ["rooms", "user_list"];
6:// Which database system: "pgsql"=PostgreSQL, "mysql"=MySQL
7:$dbsys = getenv('DB_TYPE') ? getenv('DB_TYPE') : "mysql";
8:// Hostname of database server. For pgsql, can use "" instead of localhost
9:// to use Unix Domain Sockets instead of TCP/IP. For mysql "localhost"
10:// tells the system to use Unix Domain Sockets, and $db_port will be ignored;
12:$db_host = getenv('DB_HOST');
13:// If you need to use a non standard port for the database connection you
15:// $db_port = 1234;
17:$db_database = getenv('DB_DATABASE');
19:// than one schema in your database and also you are using the same MRBS table names in
21://$db_schema = "public";
22:// Database login user name:
23:$db_login = getenv('DB_USER');
24:// Database login password:
25:$db_password = getenv('DB_PASS');
27:// one database is available
28:$db_tbl_prefix = "mrbs_";
29:// Set $db_persist to TRUE to use PHP persistent (pooled) database connections.  Note
35:$db_persist = false;
39:$disable_menu_items_for_non_admins = ["rooms", "user_list"];
sudo docker inspect MRBS --format '{{range .Config.Env}}{{println .}}{{end}}' | grep '^DB_'
sudo docker volume ls
sudo docker inspect MRBS --format '{{range .Config.Env}}{{println .}}{{end}}' | grep '^DB_'
sudo docker volume ls
sudo docker inspect MRBS --format '{{json .Mounts}}'
sudo find / -type f \( -name ibdata1 -o -name aria_log_control -o -name ib_logfile0 \) 2>/dev/null
sudo find / -type f \( -iname '*compose*.yml' -o -iname 'docker-compose.yml' -o -iname '*.yaml' \) 2>/dev/null | grep -Ei 'mrbs|meeting|booking|maria|mysql'
sudo docker pull mariadb:11.8-noble
sudo docker network create mrbsnet 2>/dev/null || true
sudo docker network connect mrbsnet MRBS 2>/dev/null || true
sudo docker run -d   --name MRBS-DB   --restart unless-stopped   --network mrbsnet   -e MARIADB_ROOT_PASSWORD='ChangeThisRootPassNow'   -e MARIADB_DATABASE='mrbs'   -e MARIADB_USER='mrbs-user'   -e MARIADB_PASSWORD='mrbs-pass'   -v /volume1/docker/mrbs/db:/var/lib/mysql   mariadb:11.8-noble
sudo docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Image}}" | grep -E 'mrbs-db|MRBS'
sudo docker logs --tail 100 mrbs-db
sudo docker exec -it MRBS sh -lc 'getent hosts mrbs-db || ping -c 1 mrbs-db'
sudo docker exec -it mrbs-db mysql -u mrbs-user -p'mrbs-pass' mrbs -e "SHOW TABLES;"
sudo docker exec -it MRBS-DB mysql -u mrbs-user -p'mrbs-pass' mrbs -e "SHOW TABLES;"
sudo docker ps
sudo docker exec -it mrbs-db mysql -u mrbs-user -p'mrbs-pass' mrbs -e "SHOW TABLES;"
sudo docker exec -it MRBS-DB mysql -u mrbs-user -p'mrbs-pass' mrbs -e "SHOW TABLES;"
sudo docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Status}}" | grep MRBS-DB
sudo docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Status}}" | grep MRBS-DBsudo docker inspect MRBS-DB --format '{{.Config.Image}}'
sudo docker inspect MRBS-DB --format '{{.Config.Image}}'
sudo docker exec -it MRBS-DB mariadb -u mrbs-user -p'mrbs-pass' mrbs -e "SHOW TABLES;"
sudo docker restart MRBS
sudo docker exec -it MRBS-DB mariadb -u mrbs-user -p'mrbs-pass' mrbs
sudo docker exec -it MRBS sh
sudo docker cp MRBS:/app/www/public/edit_entry.php ~/
sudo docker cp MRBS:/app/www/public/edit_entry_handler.php ~/
sudo docker cp MRBS:/app/www/public/view_entry.php ~/
sudo docker exec -it MRBS sh
cd /app/www/public
Sudo docker restart MRBS
sudo docker restart MRBS
sudo docker exec -it MRBS sh -c "cat >> /app/www/public/config.inc.php <<'EOF'

\$vocab_override['en']['entry.assigned_driver'] = \"Assigned Driver\";
\$vocab_override['en']['entry.odometer_out'] = \"Odometer Out\";
\$vocab_override['en']['entry.odometer_in'] = \"Odometer In\";
\$vocab_override['en']['entry.miles_traveled'] = \"Miles Traveled\";
\$vocab_override['en']['entry.trip_status'] = \"Trip Status\";

EOF"
driver workflow buttonsdriver workflow buttonsdriver workflow buttons
sudo docker exec -it MRBS sh
cd /app/www/public
cp edit_entry.php edit_entry.php.bak
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -i MRBS sh -c "cat >> /app/www/public/config.inc.php <<'EOF'

\$vocab_override['en']['entry.driver_needed']   = 'Driver Needed';
\$vocab_override['en']['entry.sponsor_name']    = 'Sponsor Name';
\$vocab_override['en']['entry.location_to']     = 'Destination';
\$vocab_override['en']['entry.num_adult']       = 'Number of Adults';
\$vocab_override['en']['entry.num_adults']      = 'Number of Adults';
\$vocab_override['en']['entry.num_students']    = 'Number of Students';

\$vocab_override['en']['entry.assigned_driver'] = 'Assigned Driver';
\$vocab_override['en']['entry.odometer_out']    = 'Odometer Out';
\$vocab_override['en']['entry.odometer_in']     = 'Odometer In';
\$vocab_override['en']['entry.miles_traveled']  = 'Miles Traveled';
\$vocab_override['en']['entry.trip_status']     = 'Trip Status';

EOF"
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh -lc "php -l /app/www/public/edit_entry.php"
sudo docker exec -it MRBS sh -lc "ls -l /app/www/public/edit_entry.php*"
sudo docker exec -it MRBS sh -lc "cp /app/www/public/edit_entry.php.pre_buttons_bak /app/www/public/edit_entry.php"
sudo docker exec -it MRBS sh -lc "php -l /app/www/public/edit_entry.php"
sudo docker restart MRBS
sudo docker exec -it MRBS sh -lc "php -l /app/www/public/edit_entry.php"
sudo docker exec -it MRBS sh -lc "ls -l /app/www/public/edit_entry.php*"
sudo docker exec -it MRBS sh
sudo docker restart MRBS
https://10.2.71.48:8006/#v1:0:18:4:::::::https://10.2.71.48:8006/#v1:0:18:4:::::::
sudo docker exec -it MRBS sh -lc "grep -n 'trip_checkout\|trip_checkin\|show_checkout\|show_checkin' /app/www/public/edit_entry.php"
sudo docker exec -it MRBS sh -lc "grep -n 'trip_checkout\|trip_checkin\|show_checkout\|show_checkin' /app/www/public/edit_entry.php"sudo docker exec -it MRBS sh -lc "grep -n 'trip_checkout\|trip_checkin\|show_checkout\|show_checkin' /app/www/public/edit_entry.php"
sudo docker exec -it MRBS sh -lc "php -l /app/www/public/edit_entry.php"
sudo docker exec -it MRBS sh
cd /app/www/public
cp edit_entry.php edit_entry.php.no_buttons_backup
sudo docker restart MRBS
sudo docker run cloudflare/cloudflared:latest tunnel --no-autoupdate run --token eyJhIjoiNTQ2NTAyNzViOTU0Mzk4MWRjZWI3MTNlOTdhYWJhZjQiLCJ0IjoiMGFlOTc1MzgtZjEyMy00ZjMwLTlmNjktYmJjNTRhOWNiMjc1IiwicyI6Ik9UWTNNREJqTVdNdFpXUXdOaTAwTlRRNExUazRNRGN0TlRrM1l6UmxZakkzT0RGaSJ9
sudo docker exec -it MRBS sh
sudo docker exec -it MRBS sh -lc "grep -n \"auth\\['admin'\\]\" /app/www/public/config.inc.php"
sudo docker exec -it MRBS sh -lc "grep -ni ldap /app/www/public/config.inc.php"
sudo docker exec -it MRBS-DB mariadb -u mrbs-user -p'mrbs-pass' mrbs -e "SELECT * FROM mrbs_users;"
sudo docker exec -it MRBS sh
sudo docker restart MRBS
sudo docker exec -it MRBS sh
docker restart MRBS
sudo docker restart MRBS
docker restart MRBS
sudo docker exec -it MRBS sh
docker restart MRBS
sudo docker restart MRBS
sudo docker exec -it MRBS sh
sudo docker restart MRBS
