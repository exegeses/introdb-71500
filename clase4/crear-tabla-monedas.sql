# Creación de tablas monedas
create table monedas
(
    id tinyint unsigned auto_increment primary key  not null,
    aprox float not null,
    exacto decimal(10,2) not null
);

-- Inserción de datos
insert into monedas
    VALUES
        ( DEFAULT, 23.66, 15.50 ),
        ( DEFAULT, 15.50, 24.40 ),
        ( DEFAULT, 24.40, 30 ),
        ( DEFAULT, 30, 50.77 ),
        ( DEFAULT, 50.77, 60.9 ),
        ( DEFAULT, 60.9, 23.66 );

-- Sumar todos los valores de la columna approx y
-- luego sumar todos los valores de la columna exacto
SELECT SUM(aprox), SUM(exacto)
FROM monedas;

