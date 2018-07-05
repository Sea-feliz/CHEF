package "install mariadb server" do
	package_name "mariadb-server"
	action :install
end

service "start mariadb service" do
	service_name "mariadb"
	action [ :start,:enable ]
end

cookbook_file 'copy student.sql file' do
	path '/tmp/student.sql'
	source 'student.sql'
	action :create
end

execute 'loading sql data' do
	command 'mysql </tmp/student.sql'
end
