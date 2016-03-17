#
# Cookbook Name:: restcomm
# Recipe:: restcomm
#

docker_service 'default' do
  action [:create, :start]
end

docker_image 'hamsterksu/loadbalancer' do
  tag 'latest'
  action :pull
end
