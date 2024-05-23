# Modificación de datos (registros) en una tabla

> Para modificar los datos de una tabla 
> utilizamos el comando **UPDATE** 

> Sintáxis: 

    UPDATE nombreTabla  
        SET nombreColumna = valor, 
            nombreColumna2 = valor2  
        WHERE columnaID = valorID;

> Ejemplo práctico: 

    UPDATE productos  
        SET precio = 5000  
            categoria = 'audio'  
        WHERE idProducto = 712; 

    UPDATE personas  
        SET alta = '2007-11-03'  
        WHERE id = 4; 


