#
# Cookbook Name:: phpapp
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache2"
include_recipe "mysql::client"
include_recipe "mysql::server"
include_recipe "php"
include_recipe "php::module_mysql"
include_recipe "apache2::mod_php5"
#include_recipe "mysql::ruby"
include_recipe "database::mysql"

apache_site "default" do
  enable true
end


mysql_database node['phpapp']['database'] do
 connection ({:host => 'localhost', :username => 'root', :password => node['mysql']['server_root_password']})
 action :create
end
