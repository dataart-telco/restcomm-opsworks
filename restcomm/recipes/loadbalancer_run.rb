#
# Cookbook Name:: restcomm
# Recipe:: loadbalancer_run
#

data = node['loadbalancer'] == nil ? node['loadbalancer'] : node

docker_container 'loadbalancer' do
  action :delete
end

docker_container 'loadbalancer' do
  network_mode 'host'
  repo 'hamsterksu/restcomm-loadbalancer'
  tag 'latest'
  env ['INTERNAL_PORT=5065', 'EXTERNAL_PORT=5060', 'LOG_LEVEL=WARN']
  action :run
end
