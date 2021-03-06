#
# Cookbook Name:: fmw_jdk
# Resource:: rng_service
#
# Copyright 2015 Oracle. All Rights Reserved
#
provides :fmw_jdk_rng_service, os: 'linux', platform_family: 'rhel' do |node|
  node['platform_version'] >= '7.0'
end

# Configure the rng service on a RedHat 7 family host
actions :configure

# Make create the default action
default_action :configure
