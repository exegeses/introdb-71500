# consulta a través de una tabla pivot

-- traer nombre de producto (productos)
-- traer nombre de proveedor (proveedores)

SELECT prdNombre AS Producto,
       prvNombre AS Proveedor
    FROM productos
    JOIN productos_proveedores
      ON productos.idProducto = productos_proveedores.idProducto
    JOIN proveedores
      ON proveedores.idProveedor = productos_proveedores.idProveedor;
