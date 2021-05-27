# sistemainventario

Configurar los accesos de DB en el archivo /includes/config.php

Desde la consola MySql ejecutar el siguiente comando para cambiar el modo en el servidor de DB

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
