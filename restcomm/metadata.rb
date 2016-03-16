name             'restcomm'
maintainer       'Gennadiy Dubina'
maintainer_email 'gdubina@dataart.com'
license          'Apache 2.0'
description      'Installs/Configures Restcomm Cluster'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.1'

source_url 'https://github.com/dataart-telco/restcomm-opsworks'
issues_url 'https://github.com/dataart-telco/restcomm-opsworks/issues'

depends 'docker', '~> 2.0'

supports 'amazon'
supports 'ubuntu'