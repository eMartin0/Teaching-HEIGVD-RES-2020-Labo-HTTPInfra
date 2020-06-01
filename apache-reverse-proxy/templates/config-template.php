<?php 
    $static_srv_url = getenv('STATIC_SRV_URL');
    $dynamic_srv_url = getenv('DYNAMIC_SRV_URL');
?>
<VirtualHost *:80>
        # Nom du serveur proxy                                             
        ServerName lab.res.ch
        ## END

        # Redirections des requêtes du plus spécifique au moins spécifique                                              
        ProxyPass '/random/' 'http://<?php print "$dynamic_srv_url" ?>/'
        ProxyPassReverse '/random/' 'http://<?php print "$dynamic_srv_url" ?>/'

        ProxyPass '/' 'http://<?php print "$static_srv_url" ?>/'
        ProxyPassReverse '/' 'http://<?php print "$static_srv_url" ?>/'
        ## END
</VirtualHost>
