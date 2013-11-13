# "Override apache2 config to non-standard port to handle requests from a reverse proxy such as Varnish."

node.override[:apache][:listen_ports] = [ "8080", "443" ]
node.override[:apache][:default_port] = "8080"
