
# Install PCRE regular expression evaluation library

pkgs = value_for_platform(
  %w( centos, redhat, fedora, amazon ) => {
    "default" => %w{ pcre-devel }
  },
  %w( debian, ubuntu ) => {
    "default" => %w{ libpcre3-dev }
  },
  "default" => %w{ libpcre3-dev }
)

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end
