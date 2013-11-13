# Automatically prepare vhosts for drupal sites.
# TODO Make this configurable per host.
# include_recipe "hosts"

# Configure the site
web_app node["drupal"]["site_name"] do
  template	"drupal-site.conf.erb"
  server_name	node["drupal"]["site_name"]
  server_aliases	node["drupal"]["site_aliases"]
  server_ports	node["apache"]['listen_ports']
  docroot	node["www_root"]
end

