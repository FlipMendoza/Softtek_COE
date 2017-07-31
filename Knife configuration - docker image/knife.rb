log_level                :info
log_location             STDOUT
node_name                'jenkins'
client_key               '/root/.chef/jenkins.pem'
validation_client_name   'chef-validator'
validation_key           '/root/.chef/chef-validator.pem'
chef_server_url          'https://chef-server:443'
syntax_check_cache_path  '/root/.chef/syntax_check_cache'
