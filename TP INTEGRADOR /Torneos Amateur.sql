CREATE TABLE `Equipos` (
    `Nombre` VARCHAR(25) NOT NULL,
    `Deporte` VARCHAR(25) NOT NULL,
    `Jugadores` INT,
    `EquipoId` INT AUTO_INCREMENT,
    PRIMARY KEY (`EquipoId`)
);

CREATE TABLE `Jugadores` (
    `Nombre` VARCHAR(25) NOT NULL,
    `Apellido` VARCHAR(25) NOT NULL,
    `EquipoId` INT NOT NULL,
    `JugadorId` INT AUTO_INCREMENT,
    PRIMARY KEY(`JugadorId`),
    FOREIGN KEY(`EquipoId`) REFERENCES `Equipos`(`EquipoId`)
);

CREATE TABLE `Inscripciones` (
    `Deuda` INT NOT NULL,
    `EquipoId` INT NOT NULL,
    `TorneoId` INT NOT NULL,
    `InscripcionId` INT AUTO_INCREMENT,
    PRIMARY KEY(`InscripcionId`),
    FOREIGN KEY(`EquipoId`) REFERENCES `Equipos`(`EquipoId`),
    FOREIGN KEY(`TorneoId`) REFERENCES `Torneos`(`TorneoId`)
);

CREATE TABLE `Torneos` (
    `Deporte` VARCHAR(25) NOT NULL,
    `FechaInicial` DATE NOT NULL,
    `FechaFinal` DATE NOT NULL,
    `Ganador` VARCHAR(25),
    `TorneoId` INT AUTO_INCREMENT,
    PRIMARY KEY(`TorneoId`)
);

CREATE TABLE `Estadisticas` (
    `PuntajeTorneo` INT NOT NULL,
    `Estadistica` INT NOT NULL,
    `EquipoId` INT NOT NULL,
    `TorneoId` INT NOT NULL,
    `EstadisticaId` INT AUTO_INCREMENT,
    PRIMARY KEY(`EstadisticaId`),
    FOREIGN KEY(`EquipoId`) REFERENCES `Equipos`(`EquipoId`),
    FOREIGN KEY(`TorneoId`) REFERENCES `Torneos`(`TorneoId`)
);

CREATE TABLE `Fixture` (
    `Fecha` DATE NOT NULL,
    `Hora` TIME NOT NULL,
    `Lugar` VARCHAR(25) NOT NULL,
    `EquipoA` VARCHAR(25) NOT NULL,
    `EquipoB` VARCHAR(25) NOT NULL,
    `Resultado` VARCHAR(25) NOT NULL,
    `TorneoId` INT NOT NULL,
    `FixtureId` INT AUTO_INCREMENT,
    PRIMARY KEY(`FixtureId` ,
    FOREIGN KEY(`TorneoId`) REFERENCES `Torneos`(`TorneoId`)
);

CREATE TABLE `Arbitraje` (
    `PuntajePartido` INT NOT NULL,
    `FixtureId` INT NOT NULL,
    `EstadisticaId` INT NOT NULL,
    `EquipoId` INT NOT NULL,
    `ArbritajeId` INT AUTO_INCREMENT,
    PRIMARY KEY(`ArbritajeId`),
    FOREIGN KEY(`FixtureId`) REFERENCES `Fixture`(`FixtureId`),
    FOREIGN KEY(`EstadisticaId`) REFERENCES `Estadisticas`(`EstadisticaId`),
    FOREIGN KEY(`EquipoId`) REFERENCES `Equipos`(`EquipoId`)
);