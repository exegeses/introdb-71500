# consultas de coincidencia
> Utilizamos estas consultas cuando 
> queremos traer datos que contengan una cadena de caracteres

> Por ejemplo que contenga la palabra "Bluetooth"

    SELECT prdNombre, prdPrecio, prdDescripcion
      FROM productos
      WHERE prdDescripcion LIKE '%Bluetooth%';

> Vamos a implementar un filtro donde en vez de utilizar **=** (el igual) 
> vamos a utilizar la palabra reservada **LIKE**.
> Y además vamos a utilizar el **%** (símbolo de porcentaje) para indicar que puede ocupar el espacio de un carácter, varios caracteres o incluso ningún carácter

> Traer todos los productos que comiencen con la palabra aspiradora (en la columna nombre)

    SELECT prdNombre, prdPrecio, prdDescripcion  
    FROM productos
    WHERE prdNombre LIKE 'Aspiradora%'; 

> Traer todos los productos que termina con la palabra pro (en la columna nombre)


    SELECT prdNombre, prdPrecio, prdDescripcion  
    FROM productos
    WHERE prdNombre LIKE '%pro'; 

> También tenemos un comodín de un solo carácter este es el
> "_" (guión bajo o underscore)

    SELECT prdNombre, prdPrecio, prdDescripcion  
     FROM productos  
     WHERE prdNombre LIKE '__po A78%';   
