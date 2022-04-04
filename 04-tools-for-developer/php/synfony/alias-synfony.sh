# configurar el servicio de prospectos.

Alias /prospectos /var/www/html/Prospectos/web

<Directory /var/www/html/Prospectos/web>

    DirectoryIndex app_dev.php
    Require all granted

</Directory>
