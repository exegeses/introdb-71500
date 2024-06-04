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
