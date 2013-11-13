maintainer	"Ian Mulvany"
maintainer_email "i.mulvany@elifesciecnes.org"
license		"Apache 2.0"
description	"installs scripts for configuring a Drupal 7.x instance"
version		"0.2.1"

%w{ debian ubuntu fedora amazon }.each do |os|
  supports os
end

depends	"php"
depends	"apache2"
depends	"mysql"
depends	"phpmyadmin"
depends	"memcached"
depends	"varnish"
