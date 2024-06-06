CREATE TABLE
    `categorias` (
                     `idCategoria` tinyint unsigned NOT NULL AUTO_INCREMENT,
                     `catNombre` varchar(45) NOT NULL,
                     PRIMARY KEY (`idCategoria`),
                     UNIQUE KEY `catNombre` (`catNombre`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

insert into `categorias` (`catNombre`, `idCategoria`) values ('Cámaras Mirrorless', 5);
insert into `categorias` (`catNombre`, `idCategoria`) values ('Iluminación inteligente', 6);
insert into `categorias` (`catNombre`, `idCategoria`) values ('Parlantes Bluetooth', 2);
insert into `categorias` (`catNombre`, `idCategoria`) values ('Robot de limpieza', 3);
insert into `categorias` (`catNombre`, `idCategoria`) values ('Smartphone', 1);
insert into `categorias` (`catNombre`, `idCategoria`) values ('Smat TV', 4);
