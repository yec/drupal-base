site=base
drush make drupal-base.make --contrib-destination .
drush si --account-mail=yechuah@gmail.com --account-name=admin --account-pass=admin --db-url=mysql://root@localhost/$site -y

chown -R apache:apache sites/default/files
