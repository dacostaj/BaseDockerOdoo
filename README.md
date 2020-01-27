 # Modulo para despliegue de odoo en Docker.
 
 A continuacion se indican los paso para realizar le despliegue en los diferentes sistemas operativos.
 
 ## Despligues en Linux Ubuntu
 
- Se clona este repositorio con el comando  `git clone https://github.com/dacostaj/BaseDockerOdoo.git` 

- Dentro de repositorio clonado se encuentra un archivo con el nombre ***installDockerLinux.sh***, darle permisos de ejecución con el comando `sudo chmod +x installDockerLinux.sh` 
 

- Luego ejecutar el script con el comando  `sudo sh installDockerLinux.sh` . este nos descargará y creará todo lo necesario para el despliegue de nuestro odoo en docker.

- Podrá ingresar a odoo por medio de su ip por el puerto 8089 ejemplo:
   
   `http://ip address:8089/`
   
# Servicios creados

Para ver el estado de los servicios creados puede ejecutar el siguiente comando.

`sudo systemctl status docker-compose-app.service`

Para ver iniciar manulmente los servicios creados puede ejecutar el siguiente comando.

`sudo systemctl start docker-compose-app.service`

Para apagar manualmente de los servicios creados puede ejecutar el siguiente comando.

`sudo systemctl stop docker-compose-app.service`


# `Autor`


### Dickson Manuel Acosta Julio
