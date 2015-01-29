rsc_rs-mysql Cookbook
==========================

Use this cookbook to override the dns provider in rs-mysql.  Replace rs-mysql::master and rs-mysql::slave with rsc_rs-mysql::master and rsc_rs-mysql::slave in your chef runlist.

### Attritures
*  provider: name of the fog::dns provider to use
*  access_key_id:  username or access key to use
*  secret_access_key: password or secret to use
*  fqdn: the fully qualified domain name of the host to update.
