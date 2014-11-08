name             'fake'
maintainer       'RightScale, Inc.'
maintainer_email 'cookbooks@rightscale.com'
license          'Apache 2.0'
description      'Installs dependencies for testing client-rs-mysql cookbook'
version          '0.1.0'

depends 'chef-sugar'

recipe 'fake::dependencies', 'Install dependencies.'
