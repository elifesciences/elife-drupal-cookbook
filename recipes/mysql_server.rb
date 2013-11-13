# "Configure host to run MySQL server."

node.default["mysql"]["bind_address"] = "127.0.0.1"
node.default["mysql"]["tunable"]["key_buffer"] = "384M"
node.default["mysql"]["tunable"]["table_cache"] = "4096"

include_recipe "mysql::server"
include_recipe "php::module_mysql"
