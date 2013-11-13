    # "Configure php5.3 and apache2 with mod_php."

node.default["apache"]["listen_ports"] = [ "80", "8080" ]
node.default["apache"]["keepaliverequests"] = 10

node.default["apache"]["prefork"]["startservers"] = 2
node.default["apache"]["prefork"]["minspareservers"] = 1
node.default["apache"]["prefork"]["maxspareservers"] = 3
node.default["apache"]["prefork"]["serverlimit"] = 4
node.default["apache"]["prefork"]["maxclients"] = 4
node.default["apache"]["prefork"]["maxrequestsperchild"] = 1000

node.default["apache"]["worker"]["startservers"] = 2
node.default["apache"]["worker"]["maxclients"] = 128
node.default["apache"]["worker"]["minsparethreads"] = 16
node.default["apache"]["worker"]["maxsparethreads"] = 128
node.default["apache"]["worker"]["threadsperchild"] = 16
node.default["apache"]["worker"]["maxrequestsperchild"] = 0

node.normal["php5"]["max_execution_time"] = "180"
node.normal["php5"]["memory_limit"] = "256M"

include_recipe "php"
include_recipe "apache2"
include_recipe "apache2::mod_expires"
include_recipe "apache2::mod_php5"
include_recipe "apache2::mod_rewrite"

