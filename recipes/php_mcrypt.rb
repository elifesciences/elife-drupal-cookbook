# Install PHP MCrypt cryptography library

pkgs = value_for_platform(
  %w( centos, redhat, fedora, amazon ) => {
    "default" => %w{ php-mcrypt }
  },
  %w( debian, ubuntu ) => {
    "default" => %w{ php5-mcrypt }
  },
  "default" => %w{ php5-mcrypt }
)

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end
