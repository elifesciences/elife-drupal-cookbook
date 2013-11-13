# Install Requirements to run Drupal application
# (not includding HTTP server and core PHP).

include_recipe "php::module_curl"

# image manipulation: this, or ImageMagick, is needed by Drupal
include_recipe "php::module_gd"

# Drupal fails to boot without this!
include_recipe "php::module_mysql"

# PHP Upload progress is commonly used
include_recipe "elife-drupal-cookbook::php_upl_prog"

# Highwire site uses XSLTProcessor class:
include_recipe "elife-drupal-cookbook::php_xsl"

#    END OF ACTIONS    ##

# LIST OF USEFUL RECIPES
#
# other modules also available from cookbook php:
# include_recipe "php::module_curl"
# include_recipe "php::module_gd"     # image manipulation: needed
# include_recipe "php::module_fpdf"
# include_recipe "php::module_apc"   # performance
# include_recipe "php::module_ldap"  # user profile/access db
# include_recipe "php::module_pgsql"   # alternate DB
# include_recipe "php::module_sqlite3"   # alternate DB
# include_recipe "php::module_memcache"   # performance
#
# include_recipe "imagemagick::default"
#
# Finally, php pear channels for symfony (drupal 8)
# php_pear_channel "symfony" do
#   channel_xml "#{Chef::Config[:file_cache_path]}/symfony-channel.xml"
#   action :add
# end
#
