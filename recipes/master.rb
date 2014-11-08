#
# Cookbook Name:: client-rs-mysql
# Recipe:: master
#

chef_gem 'chef-rewind'
chef_gem 'fog'
require 'chef/rewind'

include_recipe 'rs-mysql::master'

dns_name, domain_name = node['rs-mysql']['dns']['master_fqdn'].split('.', 2)

rewind :dns => dns_name do
  provider Chef::Provider::Dns
  dns_provider 'aws'
  credentials(
    'aws_access_key_id' => node['rs-mysql']['dns']['user_key'],
    'aws_secret_access_key' => node['rs-mysql']['dns']['secret_key'],
  )
  entry_name dns_name
  domain domain_name
end
