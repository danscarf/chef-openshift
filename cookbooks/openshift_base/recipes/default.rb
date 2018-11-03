#
# Cookbook:: openshift_base
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

['wget', 'git', 'net-tools', 'bind-utils', 'yum-utils', 'iptables-services', 'bridge-utils', 'bash-completion', 'kexec-tools', 'sos', 'psacct'].each do |p|
    package p do
      action :install
    end
  end

  execute 'yumupdates' do
    command 'yum check-updates'
    returns 0
    action :nothing
  end

#  docker_installation_package 'default' do
#  end

  docker_service 'default' do
    insecure_registry '172.30.0.0/16'
    action [:create, :start]
  end
