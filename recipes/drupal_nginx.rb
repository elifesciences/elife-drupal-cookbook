# "A Nginx + PHP-FPM + Memcached stack for Drupal."

include_recipe "elife-drupal-cookbook::apache2_mod_php"
include_recipe "elife-drupal-cookbook::apache2_backend"
include_recipe "elife-drupal-cookbook::drupal"
include_recipe "elife-drupal-cookbook::drupal_dev"
include_recipe "elife-drupal-cookbook::memcached"
include_recipe "elife-drupal-cookbook::mysql_server"
include_recipe "elife-drupal-cookbook::varnish_frontend"
include_recipe "elife-drupal-cookbook::drupal_apps
