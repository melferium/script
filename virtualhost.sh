#!/bin/bash
### Set Language
TEXTDOMAIN=virtualhost

### Set default parameters
domain=$1
sitesEnable='/etc/nginx/sites-enabled/'

if ! echo "server {
    listen 80;
    server_name $domain;

    root /var/www/blogs/html/public;

    # Turn on Passenger
    passenger_enabled on;
    passenger_ruby /usr/local/rvm/gems/ruby-2.5.3/wrappers/ruby;
}
" > $sitesEnable$domain
		then
			echo -e $"There is an ERROR create $domain file"
			exit;
		else
			echo -e $"\nNew Virtual Host Created\n"
fi

service nginx restart