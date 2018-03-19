

#crear el proyecto.
composer create-project symfony/framework-standard-edition "nombre del proyecto"

#Importar modulo para los rest controller.
composer require friendsofsymfony/rest-bundle


#Cambiar los permisos.
sudo chmod 777 -R /var/www/html


#Mostrar paquetes instalado para asegurarse.
composer show

#agregar esta configuracion en: app/config/routing.yml

fos_rest:
    format_listener:
        rules:
            - { path: ^/, prefer_extension: true, fallback_format: json, priorities: [ json ] }
        
    routing_loader:
        default_format: json                            # All responses should be JSON formated
        include_format: false                           # We do not include format in request, so that all responses
                                                        # will eventually be JSON formated


