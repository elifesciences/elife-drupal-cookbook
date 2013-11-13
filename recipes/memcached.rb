# "Install mecached deamon."
include_recipe "memcached"

node.default["memcached"]["memory"] = "128"
