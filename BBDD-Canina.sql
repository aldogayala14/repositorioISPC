/* 1. */

CREATE TABLE `peluqueria_canina`.`dueno` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `Telefono` INT NULL,
  `Direccion` VARCHAR(100) NULL,
  PRIMARY KEY (`DNI`)
);


CREATE TABLE `peluqueria_canina`.`perro` (
  `ID_Perro` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Fecha_nac` DATETIME NULL,
  `Sexo` VARCHAR(1) NULL,
  `DNI_dueno` INT,
  PRIMARY KEY (`ID_Perro`),
  FOREIGN KEY (DNI_dueno) REFERENCES dueno(DNI)
);

CREATE TABLE `peluqueria_canina`.`historial` (
  `ID_Historial` INT NOT NULL,
  `Fecha` DATETIME NULL,
  `Perro` INT,
  `Descripcion` VARCHAR(250) NULL,
  `Monto` DECIMAL NULL,
  PRIMARY KEY (`ID_Historial`),
  FOREIGN KEY (Perro) REFERENCES perro(ID_Perro)
);


/* 2. */

INSERT INTO `peluqueria_canina`.`dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) 
VALUES ('28957346', 'Pedro', 'Perez', '4789689', 'Belgrano 101');

INSERT INTO `peluqueria_canina`.`perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) 
VALUES ('1', 'Enzo', '2017-05-22', 'M', '28957346');

/* 5. */

SELECT perro.Nombre FROM peluqueria_canina.perro
JOIN peluqueria_canina.dueno ON perro.DNI_dueno=dueno.DNI
WHERE dueno.Nombre LIKE 'Pedro'
ORDER BY perro.Nombre