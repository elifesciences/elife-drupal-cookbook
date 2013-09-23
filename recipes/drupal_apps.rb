# Automatically prepare vhosts for drupal sites.
# TODO Make this configurable per host.
include_recipe "hosts"
include_recipe "apache2"

#if node["hosts"].has_key("localhost_aliases")
  node["hosts"]["localhost_aliases"].each do |site|
    # Configure the development site
    web_app site do
      template "sites.conf.erb"
      server_name site
      server_aliases [site]
# modified docroot: experiment to try to get elife site running locally
#      docroot "#{node['www_root']}/#{site}/www"
      docroot "#{node['www_root']}/#{site}/www/drupal-webroot"
    end
  end
#end
