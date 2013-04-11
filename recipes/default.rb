#
# Cookbook Name:: haproxy
# Recipe:: default
#
# Copyright 2013, TAMU 
#
#
package node[:haproxy][:package] do
  action :install
end

file "/etc/default/haproxy" do
  mode "0644"
  owner "root"
  group "root"
  content "ENABLED=1"
end

template "#{node[:haproxy][:dir]}/#{node[:haproxy][:config]}" do
  source "haproxy.cfg.erb"
  mode "0644"
  owner "root"
  group "root"
  notifies :restart, "service[#{node[:haproxy][:service]}]"
end

service node[:haproxy][:service] do
  action [:enable, :start]
end
