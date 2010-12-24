<VirtualHost *:80>
	ServerAdmin webmaster@localhost
	DocumentRoot /var/www/ape
	ServerName jjj-ubu.com
	ServerAlias www.jjj-ubu.com

	<Directory /var/www/ape>
		Options Indexes FollowSymLinks MultiViews
		AllowOverride All
		Order Allow,Deny
		Allow from All
	</Directory>

	ErrorLog /var/log/apache2/error.log

	# Possible values include: debug, info, notice, warn, error, crit,
	# alert, emerg.
	LogLevel warn

	CustomLog /var/log/apache2/access.log combined
</VirtualHost>
