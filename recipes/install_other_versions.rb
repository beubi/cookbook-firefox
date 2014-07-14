#
# Cookbook Name:: firefox
# Recipe:: install_other_versions
#
# Copyright 2011, Substantial
#
# All rights reserved - Do Not Redistribute
#

execute "apt-get update > /dev/null" do
  action :run
end

if RUBY_PLATFORM.include? "x86_64"
  package "ia32-libs"
  package "libasound2"
  package "libxrender1"
end

dir_path = "/home/vagrant/firefoxes"

directory dir_path do
  mode "0755"
  action :create
end

node[:firefox][:versions].each do |firefox_version|
  directory "#{dir_path}/#{firefox_version}" do
    mode "0755"
    action :create
  end

  firefox = node[:firefox][firefox_version]
  firefox_version_path = "#{dir_path}/#{firefox_version}"
  tar_file = "#{firefox_version_path}/#{firefox[:filename]}"

  remote_file tar_file do
    source firefox[:url]
    checksum firefox[:sha]
    action :create_if_missing
  end

  bash "untar firefox-#{firefox_version} to #{dir_path}" do
    cwd firefox_version_path
    code <<-EOH
      tar jxf #{tar_file}
    EOH
  end

  link "/usr/bin/firefox" do
    to "#{firefox_version_path}/#{firefox[:firefox_dir]}/firefox"
  end
end
