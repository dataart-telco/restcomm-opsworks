#
# Cookbook Name:: restcomm
# Recipe:: run
#
include_recipe 'hosts::hosts'

lbLayer = search("aws_opsworks_layer", "name:restcomm-loadbalancer").first
loadBalancers = search("aws_opsworks_instance", "layer_ids:#{lbLayer['layer_id']}").each.map { |i| "#{i['private_ip']}:5065"}.join(',')

data = node['restcomm'] != nil ? node['restcomm'] : node

docker_container 'restcomm' do
  action :delete
end

docker_container 'restcomm' do
  network_mode 'host'
  repo 'hamsterksu/restcomm'
  tag '7.6.0.831'
  env ["INIT_PASSWORD=#{data['INIT_PASSWORD']}", "VOICERSS_KYE=#{data['VOICERSS_KYE']}", "MEDIASERVER_LOWEST_PORT=#{data['MEDIASERVER_LOWEST_PORT']}", "MEDIASERVER_HIGHEST_PORT=#{data['MEDIASERVER_HIGHEST_PORT']}", "LOAD_BALANCERS=#{loadBalancers}", "PROD_MODE=true"]
  action :run
end
