
#importar desde la base de datos.
php bin/console doctrine:mapping:import --force AppBundle xml


#generar entidades
php bin/console doctrine:generate:entities "nombre del bundle"

