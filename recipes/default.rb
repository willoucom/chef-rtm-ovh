#
# Cookbook Name:: ovh_rtm
# Recipe:: default
#
# Copyright 2015, Wilfried JEANNIARD
#
#
package 'bzip2'

remote_file "/root/install_rtm.sh" do
  source "ftp://ftp.ovh.net/made-in-ovh/rtm/install_rtm.sh"
end

bash "install_rtm" do
   cwd "/root/"
   code <<-EOH
     sh install_rtm.sh
     EOH
end
