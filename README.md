rsc_rs-mysql Cookbook
==========================

Use this cookbook to override the dns provider in rs-mysql.  Replace rs-mysql::master and rs-mysql::slave with rsc_rs-mysql::master and rsc_rs-mysql::slave in your chef runlist.

### Attritures
* node['rsc_rs-mysql']['dns']['provider'],: name of the fog::dns provider to use
* node['rs-mysql']['dns']['user_key']:  username or access key to use
* node['rs-mysql']['dns']['user_key']: password or secret to use
* node['rs-mysql']['dns']['master_fqdn']: master hostname fqdn
* node['rsc_rs-mysql']['dns']['slave_fqdn']: slave hostname fqdn
