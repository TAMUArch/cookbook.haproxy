#
# Cookbook Name:: haproxy
# Recipe:: haproxy::package 
#
# Copyright 2013, TAMU 
#
#

if node['haproxy']['use_dev']
  case node['platform_family']
  when 'debian'
    apt_repository 'haproxy-1.5-ppa' do
      uri 'http://ppa.launchpad.net/nilya/haproxy-1.5/ubuntu'
      distribution node['lsb']['codename']
      components [ 'main' ]
      keyserver 'keyserver.ubuntu.com'
      key 'A6D3315B'
    end
  when "rhel"
    # TODO: Implement
  end
end

package node['haproxy']['package'] do
  action :install
end
