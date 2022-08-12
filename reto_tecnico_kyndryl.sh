#!/bin/bash
clear
while : 
do
backend="backend_reto_tecnico"
function imagenes_docker(){
echo -e "\033[32m"
docker pull luisevl2020/nginx_reto_tecnico:latest
docker pull luisevl2020/postgres_bd_reto_tecnico:latest
docker pull luisevl2020/backend_reto_tecnico:latest
echo -e "Se descargaron las 03 imagenes que se solicitan en el reto tecnico \n"
echo -n -e "--------------------------------------------------------------------------------------------------------------------------------------------------------\n"
docker images
echo -n -e "--------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -e "\033[0m"
}

function desplegar_docker(){
echo -e "\033[34m"
docker run -d --name backend_reto_tecnico luisevl2020/backend_reto_tecnico:latest
docker run -d --name nginx_reto_tecnico luisevl2020/nginx_reto_tecnico:latest
docker run --name postgres_bd_reto_tecnico -e POSTGRES_PASSWORD=password -d luisevl2020/postgres_bd_reto_tecnico
echo -e "Las imagenes del reto tecnico fueron desplegadas correctamente \n"
echo -n -e "---------------------------------------------------------------------------------------------------------------------------------------------------------\n"
docker ps
echo -n -e "---------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -e "\033[0m"
}

function mostrar_docker(){
echo -e "\033[5m"
echo -e "Las imagenes del reto tecnico si superan los 03 minutos quiere decir que corren correctamente HEALTH + salud correcta \n"
echo -n -e "----------------------------------------------------------------------------------------------------------------------------------------------------------\n"
docker ps
echo -n -e "----------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -e "\033[0m"
}

function suma(){
echo -e "\033[35m"
echo -e "4. Suma de 02 numeros mediante REST \n"
echo -n -e "------------------------------------- \n"
echo -n "Ingresar el primer numero:  "
read n1
echo -n "Ingresar el segundo numero:  "
read n2
echo -e "Resultado de la suma =  "
echo $n1 + $n2 = $(($n1+$n2))
echo -n -e "---------------------------------------- \n" 
echo -e "\033[0m"
}
 
function script(){
echo -e "\n"
echo -n -e "----------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -n -e "El script se encuentra dentro del git en la ruta \n"
echo -n -e "Tener en cuenta que este repositorio se creo en azure a traves de ARM template, asi que se debe tener una cuenta en azure y luego de ello subir las imagenes docker que se tienen en el local ejecutadas en el menu de la opcion 1"
echo -n -e "----------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -e "\n"

}
echo -e "\n"
echo -n -e "Menu del reto tecnico realizado por - Luis Enriqe Valverde Leyva \n"
echo -n -e "------------------------------------------------------------------\n"
echo 1. Descargar las imagenes docker del reto tecnico
echo 2. Desplegar las imagenes docker en ambiente local
echo 3. Mostrar que las imagenes docker corren correctamente buena salud
echo 4. Suma de 02 numeros mediante REST
echo 5. Script para Continuous Delivery ARM para AZURE
echo 6. Salir del Menu
echo -n "Selecciona una opcion: "
read opc
case $opc
in 
1) echo "Se empezaran a descargar las imagenes"
imagenes_docker
;;
2) echo "Se desplegaran las imagenes docker"
desplegar_docker
;;
3) echo "Se muestran que las imagenes estan desplegadas correctamente"
mostrar_docker
;;
4) echo "Suma de 02 numeros a traves de rest del docker de backend y guardandolos en la base de datos"
suma
;;
5) echo "ARM Template para crear un ACR en AZURE"
script
;;
6)exit 0
;;
*) echo "Opcion no valida......"
sleep 1
esac
done

