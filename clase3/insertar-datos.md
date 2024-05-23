# Insertar datos en una tbala

> En SQL tenemos tres maneras de insertar datos en una tabla

## Sintáxis usando **SET**

> Sintáxis: 

    INSERT INTO nombreTabla  
        SET  
            nombreColumna = valor,
            nombreColumna2 = valor2,
            nombreColumna3 = valor3,
            nombreColumna4 = valor4;

> Ejemplo práctico: 

    INSERT INTO personas  
        SET 
            id = 1,  
            apellido = 'García',  
            nombre = 'Javier',  
            dni = 25852410,  
            alta = '2008-12-12';

    INSERT INTO personas  
        SET  
            apellido = 'González',  
            nombre = 'Mónica',  
            dni = 36520147, 
            alta = '2005-09-30';


## Sintáxis completa ( se mencionan las columnas )

> Sintáxis:  

    INSERT INTO nombreTabla  
        ( col1, col2, col3, col4 )  
      VALUES  
        ( valorID, valor2, valor3, valor4 );  

> Ejemplo práctico:

    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'Martínez', 'Vanesa', 35741951, '2006-06-21' );


## Sintáxis simplificada ( NO se mencionan las columnas )

> Sintáxis:

    INSERT INTO nombreTabla
      VALUES  
        ( valorID, valor2, valor3, valor4 ); 

> Ejemplo práctico:

    INSERT INTO personas  
      VALUES  
        ( DEFAULT, 'Álvarez', 'Fernando', 32912457, '2007-11-02' );

---
### Inserción múltiple (Varios registros en un solo **INSERT**)

> versión completa

    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
     VALUES  
       ( 'Page', 'Jimmy', 18543219, '1954-06-21' ),
       ( 'Plant', 'Robert', 185432220, '1954-06-21' ),
       ( 'Bonham', 'Bonzo', 185432221, '1954-06-21' ),
       ( 'Jones', 'John', 185432222, '1954-06-21' );
 

> versión simplificada

    INSERT INTO personas
      VALUES  
       ( DEFAULT, 'Page', 'Jimmy', 18543219, '1954-06-21' ),
       ( DEFAULT, 'Plant', 'Robert', 185432220, '1954-06-21' ),
       ( DEFAULT, 'Bonham', 'Bonzo', 185432221, '1954-06-21' ),
       ( DEFAULT, 'Jones', 'John', 185432222, '1954-06-21' );
