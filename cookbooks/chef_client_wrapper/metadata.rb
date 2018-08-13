name 'chef_client_wrapper'
maintainer 'Dan Scarf'
maintainer_email 'dscarf@gmail.com'
license 'Apache-2.0'
description 'Installs/Configures chef_client_wrapper'
long_description 'Installs/Configures chef_client_wrapper'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)
supports 'centos', '7'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/danscarf/chef_client_wrapper/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/danscarf/chef_client_wrapper'

depends 'chef-client'
