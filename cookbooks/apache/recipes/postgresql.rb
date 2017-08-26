package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end
execute 'postgreql-init' do
	command 'postgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end
