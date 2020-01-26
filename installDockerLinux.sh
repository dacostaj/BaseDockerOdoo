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


