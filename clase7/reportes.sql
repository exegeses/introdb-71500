# Generación de reportes y alias
/* un alias nos sirve para renombrar un enunciado de una columna
   No cambia el nombre de la columna en la tabla,
   simplemente lo renombrar para el reporte
   Creamos un alias mediante la palabra AS (se puede omitor)
 */

SELECT  prdNombre AS Producto,
        prdPrecio AS 'Precio Contado',
        prdPrecio * 1.05 AS 'Precio Lista',
        mkNombre AS Marca,
        catNombre AS Categoría
FROM productos
     JOIN marcas
       ON productos.idMarca = marcas.idMarca
     JOIN categorias
       ON productos.idCategoria = categorias.idCategoria;