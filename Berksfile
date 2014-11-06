site :opscode

metadata

cookbook 'rs-mysql', github: 'rightscale-cookbooks/rs-mysql', tag: 'v1.1.5'
cookbook 'collectd', github: 'rightscale-cookbooks-contrib/chef-collectd', branch: 'generalize_install_for_both_centos_and_ubuntu'
cookbook 'mysql', github: 'rightscale-cookbooks-contrib/mysql', branch: 'rs-fixes'
cookbook 'dns', github: 'rightscale-cookbooks-contrib/dns', branch: 'rightscale_development_v2'
cookbook 'build-essential', '~> 1.4.4'
cookbook 'database', github: 'rightscale-cookbooks-contrib/database', branch: 'rs-fixes'

group :integration do
  cookbook 'apt', '~> 2.3.0'
  cookbook 'yum-epel', '~> 0.4.0'
  cookbook 'curl', '~> 1.1.0'
  cookbook 'rhsm', '~> 1.0.0'
end
