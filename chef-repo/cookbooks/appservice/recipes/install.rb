package "installing java" do
	package_name "java"
	action :install
end

remote_file "Downfload tomcat file" do
	path "#{node['appservice']['TAR_PATH']}"
	source "#{node['appservice']['URL']}"
end

execute "Extracting tar file" do
	command "tar -xf #{node['appservice']['TAR_PATH']}"
	cwd "/opt"
end

ruby_block 'finding files and directories' do
	block do
      WEBAPPS=Dir["#{node['appservice']['TAR_PATH']}/webapps/*"]
	end
	action :run
end
