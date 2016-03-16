#
# Cookbook Name:: restcomm
# Recipe:: restcomm
#
# Copyright (c) 2016 Gennadiy Dubina, All Rights Reserved.

docker_service 'default' do
  action [:create, :start]
end

docker_image 'hamsterksu/restcomm:7.6.0.831' do
  action :pull
end