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