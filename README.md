 ```
  __  __ _____ _____ _    _ ______ _               _____          
 |  \/  |_   _/ ____| |  | |  ____| |        /\   |  __ \   /\    
 | \  / | | || |    | |__| | |__  | |       /  \  | |  | | /  \   
 | |\/| | | || |    |  __  |  __| | |      / /\ \ | |  | |/ /\ \  
 | |  | |_| || |____| |  | | |____| |____ / ____ \| |__| / ____ \ 
 |_|  |_|_____\_____|_|  |_|______|______/_/    \_\_____/_/    \_\
```                                                       
TASK:

Crear una aplicación web con las siguientes características:

Marcas

- El usuario puede crear una marca. Las marcas solo tienen nombre. Mostrar un error si el usuario no ha puesto ningún nombre.
- El usuario puede ver una lista con las marcas existentes.
- El usuario puede editar una marca.
- El usuario puede borrar una marca. Que se muestre una alerta preguntando a el usuario si está seguro de que quiere borrar la marca antes de hacerlo.

Productos

- El usuario puede crear un producto. Los productos se componen de: nombre, marca (seleccionarla de una lista de las marcas que se crearon anteriormente), descripción y precio.
- Mostrar un error si el producto no tiene nombre o el precio es mayor a 100.
- El usuario puede ver una lista de productos existentes. Mostrar el total de la suma de todos los precios de los productos.
- El usuario puede editar un producto.
- El usuario puede borrar un producto.

Puntos extra

Utiliza getbootstrap.com para que el proyecto se vea bien.
Agrega algunas pruebas para tu código.

Instrucciones:
 - Crear bd y migraciones `rake db:create` y `rake db:migrate`.
 - Si lo deseeas puedes correr seeds para generar inserts listos `rake db:seed`.
 - Prueba y agrega todo lo que quieras :D.
 
MadeBy: **IMJUSTAGUY**
