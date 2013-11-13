# "A LAMP + Varnish + Memcached stack for Drupal similar with development tools."


# Basics
include_recipe "apt::default"
include_recipe "build-essential::default"

# Apache and basic PHP (no site config tho)
include_recipe "elife-drupal-cookbook::apache2_mod_php"

# MySQL server and PHP interface to it.
include_recipe "elife-drupal-cookbook::mysql_server"

# Override apache2 setup for default port 8080 so varnish can intevene
include_recipe "elife-drupal-cookbook::apache2_backend"

# Memcache installation for improved cache performance
include_recipe "elife-drupal-cookbook::memcached"

# Varnish executable itself
include_recipe "elife-drupal-cookbook::varnish_frontend"

# Components needed specifically for Drupal: mostly PHP mods
include_recipe "elife-drupal-cookbook::drupal"

# Components required for developer use: xdebug, et al
include_recipe "elife-drupal-cookbook::devtools"

# Drush: useful for site maintenance, not just dev
include_recipe "elife-drush-cookbook::head"
