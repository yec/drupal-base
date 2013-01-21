site=base
drush make drupal-base.make --contrib-destination .
drush si --account-mail=yechuah@gmail.com --account-name=admin --account-pass=admin --db-url=mysql://root@localhost/$site -y

drush dis toolbar            -y
drush dis dblog              -y

drush en  views_ui           -y
drush en  features           -y
drush en  admin_menu_toolbar -y
drush en  strongarm          -y
drush en  views_ifempty      -y
drush en  devel_generate     -y

chown -R apache:apache sites/default/files
drush fra -y
