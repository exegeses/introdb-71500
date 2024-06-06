# Relaciones entre tablas
> Si queremos consultar datos provenientes de dos o más tablas tenemos dos técnicas para lograrlo

## 1.- Table Relation

> La técnica **table relation** se logra mencionando 
> en el listado de las tablas (después del FROM) las tablas necesarias para la consulta separadas por comas;
> y luego mediante un filtro (**WHERE**) igualamos la columna en común
> La clave foránea de la primera tabla se iguala a la clave primaria de la segunda tabla

> Sintáxis: 

    SELECT colTabla1, coltabla1, coltabla2  
      FROM tabla1, tabla2
      WHERE tabla1.fk = tabla2.pk;

> Ejemplo práctico: 

    SELECT aeropuerto, precio, nombre  
      FROM destinos, regiones  
      WHERE destinos.idRegion = regiones.idRegion;  


    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategorias;

## 2.- Join

> En la técnica **JOIN** no se menciona en el listado de tablas (después del FROM) todas las tablas necesarias.
> Sólo se menciona la tabla principal
> Y luego utilizamos la palabra reservada **JOIN** 
> para mencionar la tabla secundaria.
> Y finalizamos igualando la columna en común 
> después de la palabra **ON**

> Sintáxis: 

    SELECT colTabla1, coltabla1, coltabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;
        
> Ejemplo práctico: 

    SELECT aeropuerto, precio, nombre  
      FROM destinos  
      JOIN regiones  
        ON destinos.idRegion = regiones.idRegion;


    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;

----
**revisar**

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos  
      JOIN marcas  
         ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria
      WHERE productos.idCategoria IN (2, 3)
        ORDER BY prdNombre;
	