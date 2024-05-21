# Creación de tablas dentro de una base de datos

> Para crear una tabla dentro de una base de datos 
> usamos el comando ** CREATE TABLE **

> Sintáxis: 

    CREATE TABLE nombreTabla    
    (
        nombreColumna1 tipoDato características,
        nombreColumna2 tipoDato características,
        nombreColumna3 tipoDato características,
        nombreColumna4 tipoDato características
    );

> EjeMplo:

    CREATE TABLE personas  
    (  
        id tinyint unsigned auto_increment primary key not null,
        apellido varchar(45) not null,  
        nombre varchar(45) not null, 
        dni int unsigned unique not null,
        alta date not null
    );
