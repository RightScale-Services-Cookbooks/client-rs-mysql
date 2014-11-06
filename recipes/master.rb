#
# Cookbook Name:: client-rs-mysql
# Recipe:: master
#

chef_gem 'chef-rewind'
require 'chef/rewind'

include_recipe 'rs-mysql::master'

rewind 'dns[dns_name]' do
  provider 'default'
  domain domain_name
  credentials()
  entry_value bind_address
  type 'A'
  ttl 60
end
