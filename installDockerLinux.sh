#! /bin/bash

# pasos para instalar docker

# actualizamos el sistema
sudo apt update

# instalamos paquetes necesarios
sudo apt install unzip apt-transport-https ca-certificates curl software-properties-common -y

# se clave GPG para el repositorio oficial de Docker a su sistema:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# se agrega el repositorio de Docker a las fuentes de APT
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# se remueve cualquier instancia de docker instalada
sudo apt remove docker docker-engine docker.io containerd runc

# se actualiza la base de datos de paquetes usando los paquetes de Docker del repositorio que acaba de agregar
sudo apt update

# instalamos docker
sudo apt install docker-ce docker-ce-cli containerd.io -y


# Paso para instalar Docker composer

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

# agrega el servicio para ejecutar automaticamente en docker-compose con el sistema
sudo chmod 775 docker-compose-app.service

sudo mv docker-compose-app.service /etc/systemd/system/

# muevo todo el proyecto a la ruta /opt/odoo/

sudo mkdir -p /opt/odoo/

sudo cp -a . /opt/odoo/

sudo rm -rf *

# Se habilita el servicio creado

sudo systemctl enable docker-compose-app.service

# Se levanta el servicio
echo "Por favor espere..........."
echo "Estamos desplegando odoo en docker...."
echo "Esto tomara algunos minutos......."
echo "Tomese un tinto mientras terminamos......."

sudo systemctl start docker-compose-app.service

sudo timeout -s KILL 2m docker exec -it odoo_12 /usr/bin/odoo -u base -d odoo

sudo docker restart odoo_12

echo "Script finalizado - Att Dickson Manuel Acosta Julio"