# Install Drupal dev tools, over and above those from drupal.rb

## assumes drupal.rb included as well though this file doesn't truly depend on that)

# "Useful tools for Drupal developers."

#include_recipe "phpmyadmin"
#include_recipe "xhprof"

# Install Git, since Drupal devs probably need that.
package "git-core"

# Install the XDebug PHP debugger (though you'll likely need a UI for it too...)
php_pear "xdebug" do
  action :install
end

# simple text browser to check the server in case of problems.
package "elinks" do
  action :install
end

# simple text editor.
package "vim" do
  action :install
end

# command line fetch HTTP document.
package "curl" do
  action :install
end

template "/etc/php5/apache2/conf.d/xdebug.ini" do
  source "xdebug.ini.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :restart, resources("service[apache2]"), :delayed
end
