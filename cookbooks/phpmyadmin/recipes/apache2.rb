include_recipe "apache2"

config_path = "#{node[:apache2][:dir]}/sites-available/phpmyadmin.conf"

template config_path do
  source "apache2/phpmyadmin.conf.erb"
  owner "root"
  group "root"
  mode 0644
  if File.exists?(config_path)
    notifies :reload, resources(:service => "apache2"), :delayed
  end
end

apache2_site "phpmyadmin.conf" do
  enable enable_setting
end
