#
# Cookbook Name:: client-rs-mysql
# Recipe:: master
#

# This recipe uses Route53/AWS DNS provider.

chef_gem 'chef-rewind'
chef_gem 'fog'

require 'chef/rewind'

include_recipe 'rs-mysql::master'

dns_name = node['rs-mysql']['dns']['master_fqdn'].split('.').first

rewind :dns => dns_name do
  provider Chef::Provider::Dns
  dns_provider 'aws'
  credentials(
    'aws_access_key_id' => node['rs-mysql']['dns']['user_key'],
    'aws_secret_access_key' => node['rs-mysql']['dns']['secret_key'],
  )
  entry_name node['rs-mysql']['dns']['master_fqdn']
end
