
to enable SEO urls:
	* make the configuration file writeable by the admin in the joomla app. 
		* chown www-data /var/www/configuration.php
		
	* setup the available site for RebeccaCheri, ensure that the site-available in Apache2 has AllowOverride set to All.
	* install the mod_proxy and mod_rewrite modules for apache2
		* a2enmod 
			* proxy, rewrite
			
	* restart apache
	
	* enable SEO urls in Joomla global admin, also enable apache mod rewrite.