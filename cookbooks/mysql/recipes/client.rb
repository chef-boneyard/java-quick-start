#
# Cookbook Name:: mysql
# Recipe:: client
#
# Copyright 2008-2011, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

pkg = package "mysql-devel" do
  package_name value_for_platform(
    [ "centos", "redhat", "suse", "fedora"] => { "default" => "mysql-devel" },
    ["debian", "ubuntu"] => { "default" => 'libmysqlclient-dev' },
    "default" => 'libmysqlclient-dev'
  )
  action :nothing
end
pkg.run_action(:install)

pkg = package "mysql-client" do
  package_name value_for_platform(
    [ "centos", "redhat", "suse", "fedora"] => { "default" => "mysql" },
    "default" => "mysql-client"
  )
  action :install
end
pkg.run_action(:install)

chef_gem 'mysql'

