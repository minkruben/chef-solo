default[:phpmyadmin][:cfg][:cfg_path]               =   '/etc/phpmyadmin'
default[:phpmyadmin][:cfg][:path]                   =   '/usr/share/phpmyadmin'

default[:phpmyadmin][:cfg][:auth_type]              =   'cookie'
default[:phpmyadmin][:cfg][:allow_root]             =   false
default[:phpmyadmin][:cfg][:allow_no_password]      =   false

default[:phpmyadmin][:cfg][:control_database]       =   'phpmyadmin'
default[:phpmyadmin][:cfg][:control_user]           =   'phpmyadmin'
#default[:phpmyadmin][:cfg][:control_user_password] =   '' - will be set to an automatically generated password unless specified

default[:phpmyadmin][:apache2][:port]                 =   80
default[:phpmyadmin][:apache2][:server_name]          =   'phpmyadmin.yourhost.com'
default[:phpmyadmin][:apache2][:docroot]              =   default[:phpmyadmin][:cfg][:path]
default[:phpmyadmin][:apache2][:fastcgi_server]       =   'unix:/dev/shm/php5-fpm.sock'


