# creación de tablas departamentos
create table departamentos
(
    idDepartamento tinyint unsigned auto_increment primary key not null,
    departamento varchar(50) unique not null
);

-- Inserción de datos en tabla departamentos
INSERT INTO departamentos
VALUES
    ( DEFAULT, 'Administración' ),
    ( DEFAULT, 'Compras' ),
    ( DEFAULT, 'Ventas' ),
    ( DEFAULT, 'Atención al público' ),
    ( DEFAULT, 'Gerencia general' ),
    ( DEFAULT, 'Marketing' );
