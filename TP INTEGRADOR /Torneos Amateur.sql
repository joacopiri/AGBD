
CREATE TABLE "Equipos" (
	"Nombre"	VARCHAR(25) NOT NULL,
	"Deporte"	VARCHAR(25) NOT NULL,
	"Jugadores" INTEGER,
	"EquipoId" INTEGER,
	PRIMARY KEY("EquipoId" AUTO_INCREMENT)
);

CREATE TABLE "Jugadores" (
	"Nombre"	VARCHAR(25) NOT NULL,
	"Apellido"	VARCHAR(25) NOT NULL,
	"EquipoId" INTEGER NOT NULL,
	"JugadorId"	INTEGER,
	PRIMARY KEY("JugadorId" AUTO_INCREMENT),
	FOREIGN KEY("EquipoId") REFERENCES "Equipos"("EquipoId")
);

CREATE TABLE "Inscripciones" (
	"Deuda" INT NOT NULL,
    "EquipoId" INT NOT NULL,
    "TorneoId" INT NOT NULL,
    "InscripcionId" INT,
    PRIMARY KEY("InscripcionId" AUTO_INCREMENT),
    FOREIGN KEY("EquipoId") REFERENCES "Equipos"("EquipoId"),
    FOREIGN KEY("TorneoId") REFERENCES "Torneos"("TorneoId")
);

CREATE TABLE "Torneos" (
	"Deporte" VARCHAR(25) NOT NULL,
    "FechaInicial" DATE NOT NULL,
    "FechaFinal" DATE NOT NULL,
    "Ganador" VARCHAR(25),
    "TorneoId" INT,
    PRIMARY KEY("TorneoId" AUTO_INCREMENT)
);

CREATE TABLE "Estadisticas" (
	"PuntajeTorneo" INT NOT NULL,
    "Estadistica" INT NOT NULL,
    "EquipoId" INT NOT NULL,
    "TorneoId" INT NOT NULL,
    "EstadisticaId" INT,
    PRIMARY KEY("EstadisticaId" AUTO_INCREMENT)
    FOREIGN KEY("EquipoId") REFERENCES "Equipos"("EquipoId"),
    FOREIGN KEY("TorneoId") REFERENCES "Torneos"("TorneoId")
 
);

CREATE TABLE "Fixture" (
	"Fecha" DATE NOT NULL,
    "Hora" TIME NOT NULL,
    "Lugar" VARCHAR(25) NOT NULL,
    "EquipoA" VARCHAR(25) NOT NULL,
    "EquipoB" VARCHAR(25) NOT NULL,
    "Resultado" VARCHAR(25) NOT NULL,
    "TorneoId" INT NOT NULL,
    "FixtureId" INT,
    PRIMARY KEY("FixtureId" AUTO_INCREMENT),
    FOREIGN KEY("TorneoId") REFERENCES "Torneos"("TorneoId")
);

CREATE TABLE "Arbitraje"(
	"PuntajePartido" INT NOT NULL 
	"FixtureId" INT NOT NULL
	"EstadisticaId" INT NOT NULL 
	"EquipoId" INT NOT NULL
	"ArbritajeId" INT
    PRIMARY KEY("ArbritajeId" AUTO_INCREMENT)
    FOREIGN KEY("FixtureId") REFERENCES "Fixture"("FixtureId")
    FOREIGN KEY("EstadisticaId") REFERENCES "Estadisticas"("EstadisticaId")
    FOREIGN KEY("EquipoId") REFERENCES "Equipos"("EquipoId")
);
--------------------------------------------------------------------------------------