name             'client-rs-mysql'
maintainer       'Lopaka Delp'
maintainer_email 'lopaka@rightscale.com'
license          'All rights reserved'
description      'client-rs-mysql'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'rs-mysql' '~> 1.1.5'

recipe 'client-rs-mysql::default', 'Runs rs-mysql::default with custom changes to config.'
