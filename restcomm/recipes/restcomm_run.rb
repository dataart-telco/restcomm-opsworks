#
# Cookbook Name:: restcomm
# Recipe:: run
#

data = node['restcomm'] == nil ? node['restcomm'] : node

docker_container 'restcomm' do
  action :delete
end

docker_container 'restcomm' do
  network_mode 'host'
  repo 'hamsterksu/restcomm'
  tag '7.6.0.831'
  env ["INIT_PASSWORD=#{data['INIT_PASSWORD']}", "VOICERSS_KYE=#{data['VOICERSS_KYE']}", "MEDIASERVER_LOWEST_PORT=#{data['MEDIASERVER_LOWEST_PORT']}", "MEDIASERVER_HIGHEST_PORT=#{data['MEDIASERVER_HIGHEST_PORT']}"]
  action :run
end
