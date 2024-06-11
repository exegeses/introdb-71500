# Vistas en SQL

/*
    Una vista es una consulta
    que podemos almacenar dentro de nuestra base de datos
    Si tenemos una consulta que
    ejecutamos de manera frecuente,
    una vista nos simplificará esta tarea.
*/
## !! Parece una tabla independiente
## pero en realidad no lo es

CREATE VIEW lista_productos
  AS
    SELECT  idProducto AS id,
            prdNombre AS Producto,
            prdPrecio AS 'Precio Contado',
            prdPrecio * 1.05 AS 'Precio Lista',
            mkNombre AS Marca,
            catNombre AS Categoría
    FROM productos
             JOIN marcas
               ON productos.idMarca = marcas.idMarca
             JOIN categorias
               ON productos.idCategoria = categorias.idCategoria;

-- Ejecutamos la vista
    SELECT * FROM lista_productos;

/*
    Obtener el listado de todas las vistas
    dentro de una base de datos
*/
SHOW FULL TABLES
    IN introdb
  WHERE Table_type = 'VIEW';