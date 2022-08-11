/*CRACION DE TABLAS*/
CREATE TABLE `dueno` (
  `DNI` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `perro` (
  `ID_Perro` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Sexo` varchar(45) NOT NULL,
  `DNI_Dueno` int NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  KEY `DNI_Dueno_idx` (`DNI_Dueno`),
  CONSTRAINT `DNI_Dueno` FOREIGN KEY (`DNI_Dueno`) REFERENCES `dueno` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `historial` (
  `ID_Historial` int NOT NULL,
  `Fecha` date NOT NULL,
  `Perro` int NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Monto` float NOT NULL,
  PRIMARY KEY (`ID_Historial`),
  KEY `ID_PERRO_idx` (`Perro`),
  CONSTRAINT `ID_PERRO` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_Perro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*INSERTANDO DATOS EN TABLA DUENO*/
INSERT INTO `veterinaria`.`dueno`
(`DNI`,
`Nombre`,
`Apellido`,
`Telefono`,
`Direccion`)
VALUES
(38081753,
'Aldo',
'Ayala',
'3547457043',
'Luis Primo Gonzalez 271');
INSERT INTO `veterinaria`.`dueno`
(`DNI`,
`Nombre`,
`Apellido`,
`Telefono`,
`Direccion`)
VALUES
(38082754,
'Juan',
'Perez',
'3547457045',
'Saavedra 310');
INSERT INTO `veterinaria`.`dueno`
(`DNI`,
`Nombre`,
`Apellido`,
`Telefono`,
`Direccion`)
VALUES
(37082753,
'Maria',
'Gomez',
'35157457045',
'Corrientes 1200');

/*INSERTANDO DATOS EN TABLA PERRO*/
INSERT INTO `veterinaria`.`perro`
(`ID_Perro`,
`Nombre`,
`Fecha_nac`,
`Sexo`,
`DNI_Dueno`)
VALUES
(3,
'Tomas',
20220418,
'Macho',
38082754);
INSERT INTO `veterinaria`.`perro`
(`ID_Perro`,
`Nombre`,
`Fecha_nac`,
`Sexo`,
`DNI_Dueno`)
VALUES
(1,
'Rocco',
20160316,
'Macho',
38081753);
INSERT INTO `veterinaria`.`perro`
(`ID_Perro`,
`Nombre`,
`Fecha_nac`,
`Sexo`,
`DNI_Dueno`)
VALUES
(2,
'Poppy',
20200418,
'Hembra',
37082753);
INSERT INTO `veterinaria`.`perro`
(`ID_Perro`,
`Nombre`,
`Fecha_nac`,
`Sexo`,
`DNI_Dueno`)
VALUES
(10,
'Pelusin',
20200418,
'Macho',
38081753);


/*INSERTANDO DATOS EN TABLA HISTORIAL*/
INSERT INTO `veterinaria`.`historial`
(`ID_Historial`,
`Fecha`,
`Perro`,
`Descripcion`,
`Monto`)
VALUES
(1,
20220811,
1,
'Baño de perro',
1500);
INSERT INTO `veterinaria`.`historial`
(`ID_Historial`,
`Fecha`,
`Perro`,
`Descripcion`,
`Monto`)
VALUES
(2,
20220611,
2,
'Baño y corte de uñas',
2800);
INSERT INTO `veterinaria`.`historial`
(`ID_Historial`,
`Fecha`,
`Perro`,
`Descripcion`,
`Monto`)
VALUES
(3,
20220320,
3,
'Ecografia de estamago',
5000);
INSERT INTO `veterinaria`.`historial`
(`ID_Historial`,
`Fecha`,
`Perro`,
`Descripcion`,
`Monto`)
VALUES
(4,
20220801,
1,
'Revision completa',
3500);
INSERT INTO `veterinaria`.`historial`
(`ID_Historial`,
`Fecha`,
`Perro`,
`Descripcion`,
`Monto`)
VALUES
(5,
20210801,
1,
'Revision completa',
3500);


/*CONSULTAS PUNTOS 4, 6, 8 y 12*/

/*------PUNTO 4------*/
UPDATE `veterinaria`.`perro`
SET Fecha_nac='20220310'
WHERE ID_Perro = '1';

/*------PUNTO 6------*/
SELECT * FROM `veterinaria`.`historial`
WHERE Fecha >= '20220101' AND Fecha <= '20221231';

/*------PUNTO 8------*/
INSERT INTO `veterinaria`.`historial`
(`ID_Historial`,
`Fecha`,
`Perro`,
`Descripcion`,
`Monto`)
VALUES
(6,
20220801,
10,
'Revision completa',
4800);

/*------PUNTO 12------*/
SELECT * FROM `veterinaria`.`perro`
WHERE Fecha_nac >= '20200101' AND Fecha_nac <= '20221231' AND Sexo= 'Macho';



