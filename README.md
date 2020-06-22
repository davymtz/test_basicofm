# CONTENEDORES WORDPRESS y Mysql
Esto es una aplicación hecha para poner levantar ambiente de BD con "Mysql" y wordpress dentro de un servidor Apache y con PHP version 7.2

## Requisitos principales
 - [Docker](https://hub.docker.com/search?q=&type=edition&offering=community)
 - [docker-compose](https://docs.docker.com/compose/install/)

Los contenedores que se ejecutarán, obtendrán 1 servicio cada uno:
- Servidor Apache, PHP v7.2, y todo el CMS de wordpress
- Mysql

## Pasos para ejecutar la aplicación:
1. Ejecutar el siguiente comando en consola:
`[sudo] docker-composer up -d`
Y nos debería de salir algo como esto, en caso de exito:
```
Creating network "stack_mean_default" with the default driver
Creating mysql   ... done
Creating wp_web ... done
```
2. Ejecutar el siguiente comando:
`[sudo] docker exec -i mysql sh -c 'exec mysql -uroot -p"root"' < wordpress.sql`
si todo sale bien podiblemente se vea en consola el siguiente mensaje:
```
Test
```
3. Si todo sale bien y no produce ningún error, podemos ver el proyecto funcionando en la siguiente ruta: 
[localhost:1234](http://localhost:1234)


### Notas:
Lo que esta encerrado entre corchetes "[]", es optativo
Para poder ver los contenedores ejecutandose, puede hacerlo con el siguiente comando en la terminal:
`[sudo] docker ps`
Aqui les mostrará los contenedores o servicios ejecutandose para poder mostrar lo correspondiente

Una vez terminado de ejecutar las pruebas necesarias, puede detener los procesos y eliminar los contenedores con __*docker-compose*__:
`[sudo] docker-compose down`
