#liverar proceso de instalacion de paquetes
sudo fuser -vki  /var/lib/dpkg/lock

#ver lista de paquetes actulizables
sudo apt list --upgradable

#sobre escribir un paquete
sudo apt -o Dpkg::Options::="--force-overwrite" install openjdk-9-jdk

#rutas del sistema
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

#ver el contenido de un archivo.
cat archivo.txt


#insertar al final de un archivo.
sed -i '$a Aqui el texto que ira en la ultima linea' archivo.txt


