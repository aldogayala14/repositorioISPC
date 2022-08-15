CREATE TABLE `dueno` (
  `DNI` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `historial` (
  `ID_Historial` int NOT NULL,
  `Fecha` date NOT NULL,
  `Perro` int NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Monto` float NOT NULL,
  PRIMARY KEY (`ID_Historial`),
  KEY `Perro_idx` (`Perro`),
  CONSTRAINT `Perro` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_perro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `perro` (
  `ID_perro` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `Sexo` varchar(45) NOT NULL,
  `DNI_dueno` int NOT NULL,
  PRIMARY KEY (`ID_perro`),
  KEY `DNI_Dueno_idx` (`DNI_dueno`),
  CONSTRAINT `DNI_dueno` FOREIGN KEY (`DNI_dueno`) REFERENCES `dueno` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
INSERT INTO `veterinaria`.`dueno`
(`DNI`,
`Nombre`,
`Apellido`,
`Telefono`,
`Direccion`)
VALUES
( '38390319',
'Matias',
'Peña',
'603614972',
'Avenida la paz');
INSERT INTO `veterinaria`.`dueno`
(`DNI`,
`Nombre`,
`Apellido`,
`Telefono`,
`Direccion`)
VALUES
('39453714',
'Mariano',
'Soria',
'4258827',
'Avenida del sur');
INSERT INTO `veterinaria`.`perro`
(`ID_perro`,
`Nombre`,
`Fecha_Nac`,
`Sexo`,
`DNI_dueno`)
VALUES
('10',
'Firulai',
'20220812',
'Macho',
'39453714');
INSERT INTO `veterinaria`.`perro`
(`ID_perro`,
`Nombre`,
`Fecha_Nac`,
`Sexo`,
`DNI_dueno`)
VALUES
('9',
'kalaia',
'20220212',
'Hembra',
'38390319');
INSERT INTO `veterinaria`.`perro`
(`ID_perro`,
`Nombre`,
`Fecha_Nac`,
`Sexo`,
`DNI_dueno`)
VALUES
('8',
'Varito',
'20011215',
'Macho',
'36520519');

INSERT INTO `veterinaria`.`historial`
(`ID_Historial`,
`Fecha`,
`Perro`,
`Descripcion`,
`Monto`)
VALUES
('10',
'20011215',
'10',
'Perro amigable',
'20.05');

DELETE FROM historial
WHERE ID_Historial= 7 AND Fecha < '20011230';


