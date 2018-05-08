

#crear el proyecto de synfony4.
composer create-project symfony/skeleton "nombre del proyecto"

#Importar modulo para los rest controller usando synfony flex.
composer require sensio/framework-extra-bundle
composer require jms/serializer-bundle
composer require friendsofsymfony/rest-bundle
composer require symfony/orm-pack

#importar otros modulos utiles.
composer require friendsofsymfony/elastica-bundle     #elastc searh integrations
composer require php-amqplib/rabbitmq-bundle          #rabbit mq integrations

#Cambiar los permisos.
sudo chmod 777 -R /var/www/html

#Mostrar paquetes instalado para asegurarse.
composer show

#Asi deberia quedar el archivo: config/bundle.php
<?php

return [
    Symfony\Bundle\FrameworkBundle\FrameworkBundle::class => ['all' => true],
    Sensio\Bundle\FrameworkExtraBundle\SensioFrameworkExtraBundle::class => ['all' => true],
    JMS\SerializerBundle\JMSSerializerBundle::class => ['all' => true],
    FOS\RestBundle\FOSRestBundle::class => ['all' => true],
    Doctrine\Bundle\DoctrineCacheBundle\DoctrineCacheBundle::class => ['all' => true],
    Doctrine\Bundle\DoctrineBundle\DoctrineBundle::class => ['all' => true],
    Doctrine\Bundle\MigrationsBundle\DoctrineMigrationsBundle::class => ['all' => true],
];

#comentar esta configuracion en: config/packages/fos_rest.yml
fos_rest: ~
 
#agregar esta configuracion en: config/packages/fos_rest.yml
fos_rest:
    format_listener:
        rules:
            - { path: ^/, prefer_extension: true, fallback_format: json, priorities: [ json ] }
        
    routing_loader:
        default_format: json                            # All responses should be JSON formated
        include_format: false                           # We do not include format in request, so that all responses
        
# crear es archivo sensio_framework_extra.yml y agregar configuracion en: config/packages/sensio_framework_extra.yml
sensio_framework_extra:
    view:        { annotations: true }
    
#configurar la conexion de base de datos en: /.env

###> doctrine/doctrine-bundle ###
# Format described at http://docs.doctrine-project.org/projects/doctrine-dbal/en/latest/reference/configuration.html#connecting-using-a-url
# For an SQLite database, use: "sqlite:///%kernel.project_dir%/var/data.db"
# Configure your db driver and server_version in config/packages/doctrine.yaml
DATABASE_URL=mysql://db_user:db_password@127.0.0.1:3306/db_name
###< doctrine/doctrine-bundle ###

#para crear la base de datos.
bin/console doctrine:database:create

#para crear las tablas.
bin/console doctrine:schema:create 

