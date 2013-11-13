# Install somewhat minimal tools to run Drupal, not including a specific HTTP server or PHP.
include_recipe "apt::default"
include_recipe "build-essential::default"
