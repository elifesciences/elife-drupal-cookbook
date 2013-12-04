# Automatically prepare vhosts for drupal sites.
# TODO Make this configurable per host.
# include_recipe "hosts"

# Overwrite the default apache php.ini for the project
template "/etc/php5/apache2/php.ini" do
  source "php.ini.erb"
  owner "root"
  group "root"
  mode "0644"
  notifies :restart, 'service[apache2]'
end

# Configure the site
web_app node["drupal"]["site_name"] do
  template  "drupal-site.conf.erb"
  server_name node["drupal"]["site_name"]
  server_aliases  node["drupal"]["site_aliases"]
  server_ports  node["apache"]['listen_ports']
  docroot node["www_root"]
  custom_php_ini "/etc/php5/apache2/php.ini"
  notifies :restart, 'service[apache2]'
end
