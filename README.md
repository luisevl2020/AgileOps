# AgileOps
Uso para el reto tecnico KYNDRYL
Guía para la ejecución de pasos reto Técnico
Se creo un menú en shell scripting con el fin de simplificar las descargas de las imagenes docker construidas para el reto tecnico.
•	Se debe descargar el bashero en un SO con distirbucion linux que se encuentra dentro del github
https://github.com/luisevl2020/AgileOps/blob/main/reto_tecnico_kyndryl.sh
 
•	y brindarle permisos al bashero con el siguiente commando:
“chmod 777 reto_tecnico_kyndryl.sh”
 
•	Ejecutar el siguiente commando: ./reto_tecnico_kyndryl.sh
 
•	Se desplegara un Menu el cual se debe seguir en Orden
Se debe empezar desde el orden que se aprecia en la plantilla
 
•	Se coloca la opcion que se require realizar. Opcion: 1
 
•	Se empezaran a descargar las imagenes pertinentes al reto tecnico como:
o	El backend
o	El nginx
o	La BD en postgres
Estas imagenes se encuentran subidas en mi repositorio de DockerHub: luisevl2020's Profile | Docker Hub
 

•	Una vez descargado la opcion 1 se debe seguir con la opcion 2
o	Esta opcion desplegara las imagenes docker pertinentes al reto tecnico
 
•	Despues de desplegar las imagenes docker en local verificar la salud de los contenedores para ello selecionar la opcion 3
 
•	La siguiente opción es para realizar la suma de 02 numero  este resultado se guarde en la BD
o	Para ello selecionar la opcion: 4
 
•	La siguiente opción es para explicar el punto o la opcion 5 se debe descargar el .json que se encuentra subido en el github https://github.com/luisevl2020/AgileOps/blob/main/Continuous_Deployment_ACR.json
 

 
•	Ir a la nube de AZURE y se debe buscar el servicio “Custom Deployment” en el buscador de azure y dar clic en ese servicio.

 

•	Dar clic en “Build your owm template in the editor”

 






•	Dar clic en Load File

 

•	Cargar el archivo “Continuous_Deployment_ACR” que fue descargado del github

 


