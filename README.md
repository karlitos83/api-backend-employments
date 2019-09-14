# README

La aplicación permite autentificarse como usuario (empleado) y consultar su horarios de jornadas de trabajo utilizando su número identificador de usuario. Asimismo, aquellos que cuentan con rol de administrador pueden visualizar el conjunto de datos de usuarios y todos los horarios, así como crear, modificar y borrar usuarios y jornadas de trabajo.

La generación del Json Web Token de cada inición de sesión se utilizaron las gemas 'bcrypt' y 'knock'. Sin la autenticación de usuario no es posible realizar ninguna acción, es necesario despues de autentificarse asignar Bearer token para autorizar la ejecución de consultas.

Para su funcionamiento es necesario clonar o descargar el proyecto y modificar el archivo /config/database.yml agregando la información de host:, user: y password: de sus base de datos postgresql.

La generación de datos bien puede ser desde la consola de rails o hacer uso del archivo /db/seeds.rb que contiene algunos datos de usuario y horarios de los mismos que pueden facilitar el proceso debido a que el tipo de datos de los horarios es 'timestamp'.

Se realizaron pruebas funcionales y la documentación con Postman, la cuál puede consultarse en https://documenter.getpostman.com/view/8802421/SVmtxJzV 


