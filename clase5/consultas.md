# Consultas en SQL

## Consultas a server

    -- listar las bases de datos  
    SHOW DATABASES;

    -- listar las tablas dentro de la base de datos activa  
    SHOW TABLES;

> La palabra reservada más importante 
> o al menos la más utilizada para hacer consultas 
> es la palabra **SELECT**

    -- Mostrar la base de datos activa
    SELECT DATABASE();

## Consultas a un tabla 

> Para realizar consultas a una tabla de una base de datos 
> utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra reservada **FROM**

    SELECT * FROM nombreTabla;  
    SELECT * FROM regiones;  
    SELECT * FROM destinos;  
    
> En estos ejemplos traemos todos los datos de todas las columnas de la tabla mencionada.
 
> Si queremos traer los datos de **algunas** columnas de una tabla 
> debemos mencionar los nombres de las columnas separadas por comas (en lugar del *)

    SELECT nombreColumna, nombreColumna2  
      FROM nombreTabla;

    SELECT aeropuerto, precio   
      FROM destinos;  

### Orden de los resultados de una consulta

> Para ordenar los resultados de una consulta utilizamos la palabra **ORDER BY**

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY aeropuerto;  

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY precio;  

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY idRegion, precio; 

### Filtrado de resultados

> Filtrar resultados de una consulta significa traer solamente los registros que cumplan con una condición dada.
> Para implementar un filtro utilizamos la palabra reservada **WHERE** seguida de una condición

    SELECT columna2, columna4  
      FROM nombreTabla  
      WHERE condición

> Traer datos de los destinos con un precio hasta 8400

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio <= 8400;

> Traer todos los destinos con un precio entre 6600 y 8400

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio BETWEEN 6600 AND 8400; 

    SELECT aeropuerto, precio
      FROM destinos
      WHERE precio >= 6600
       AND precio <= 8400;  

> Traer todos los destinos de la región 5

    SELECT aeropuerto, precio 
      FROM destinos  
      WHERE idRegion = 5;

> Traer todos los destinos de la región 3 de la regi´´on 5

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion = 3
       OR  idRegion = 5;


    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion BETWEEN 3 AND 5
      AND idRegion != 4;


    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion IN( 3, 5 );


----
> revisar:

SELECT * FROM personas
-- WHERE alta BETWEEN '2006-01-01' AND '2007-12-31';
-- WHERE YEAR(alta) BETWEEN 2006 AND 2007;
-- WHERE YEAR(alta) NOT IN(1954, 2008, 2005);
WHERE YEAR(alta) IN( 2006, 2007 );