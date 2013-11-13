# Install PHP XSL (XML Stylesheets) class library

# Install APC for increased performance. rfc1867 support also provides minimal
# feedback for file uploads.  Requires pcre library.
php_pear "apc" do
  directives(:shm_size => "70M", :rfc1867 => 1, :include_once_override => 0)
  version "3.1.6" # TODO Somehow Chef PEAR/PECL provider causes debugging to be enabled on later builds.
  action :install
end
