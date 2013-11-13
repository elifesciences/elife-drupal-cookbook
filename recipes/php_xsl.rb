# Install PHP XSL (XML Stylesheets) class library

pkgs = value_for_platform(
  %w( centos, redhat, fedora, amazon ) => {
    "default" => %w{ php-xsl }
  },
  %w( debian, ubuntu ) => {
    "default" => %w{ php5-xsl }
  },
  "default" => %w{ php5-xsl }
)

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end
