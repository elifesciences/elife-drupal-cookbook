# Install PHP upload progress library from PEAR

# uploadprogress needs pcre IIRC
include_recipe "elife-drupal-cookbook::php_pcre"

# Install uploadprogress for better feedback during Drupal file uploads.
php_pear "uploadprogress" do
  action :install
end
