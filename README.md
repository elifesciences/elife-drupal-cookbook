# Elife-drupal-Cookbook

Rules and recipes for Chef that install and configure an Ubuntu server
to host a Drupal website. Ubuntu is currently the only option tested, though
Debian, Fedora, RHEL 'should' work too.

The "in" point are the roles:

	drupal_lamp_dev
	drupal_lamp_varnish_dev
	drupal_nginx

Only the first of these has been tested at this point.

# Additional recipes

Some additional recipes are provided to extend the configuration:

	php_apc		(for the PHP caching extension)
	php_xsl		(for the PHP XML/XSL extension)
	php_mcrypt	(for the MCrypt library)
	php_pcre    (PC regular expressions, needed to support PECL)
	php_upl_prog	(for the PHP Upload Progress extension)


# Configuration

The drupal components are configured using a variety of elements. From
Chef for example:

    chef.json = {
      "apache" => {
        "listen_ports" => [ "80", "8080" ], # list of ports to listen on, e.g. [ "80", "8080"]
      },
      "drupal" => {
        "www_root" => "/path/to",           # a single name by which the server is known
        "site_name" => "site.local",        # a single name by which the server is known
        "site_aliases" => [],               # used in web_app recipe, alternate names for server
      },
      "mysql" => {
        "server_database" => "dbname",      # the name of the database. Must match settings.php
        "server_root_userid" => "admin",    # database admin userid
        "server_root_password" => "admin",  # database admin password
	  }


Apache will be configured using the Debian-style commands a2ensite, a2enmod et al, as is normal
for Chef, and the site file will be called {site_name}.conf.

