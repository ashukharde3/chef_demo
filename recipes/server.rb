#
# Cookbook:: .
# Recipe:: server
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'httpd'

#file '/var/www/html/index.html' do
#	content "<h1>Hello World!</h1>
#		<h2>ipaddress: #{node['ipaddress']}</h2>
#		<h2>hostname: #{node['hostname']}</h2>
#"
#end

template '/var/www/html/index.html' do
	source 'index.html.erb'
end

service 'httpd' do
	action [:start, :enable]
end
