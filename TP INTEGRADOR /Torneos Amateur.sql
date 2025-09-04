--Creo las 4 tablas con sus respetivos campos a completar

CREATE TABLE "Equipos" (
	"Nombre"	VARACHAR(25) NOT NULL,
	"Deporte"	VARACHART(25) NOT NULL,
	"Jugadores" INTEGER,
	"EquipoId" INTEGER,
	PRIMARY KEY("EquipoId" AUTOINCREMENT)
);

CREATE TABLE "Jugadores" (
	"Nombre"	VARACHAR(25) NOT NULL,
	"Apellido"	VARACHAR(25) NOT NULL,
	"EquipoId" INTEGER NOT NULL,
	"jugadorId"	INTEGER,
	PRIMARY KEY("jugadorId" AUTOINCREMENT),
	FOREIGN KEY("EquipoId") REFERENCES "Equipos"("EquipoId")
);

--------------------------------------------------------------------------------------

CREATE TABLE "Torneos" (
	"Deporte" VARACHAR(25) NOT NULL,
	"Equipo" VARACHAR(25) NOT NULL,
	"Puesto" INTEGER NOT NULL,
	"Puntaje" INTEGER NOT NULL,
	"TorneoId"	INTEGER,
	PRIMARY KEY("TorneoId" AUTOINCREMENT),
);

CREATE TABLE "Partidos" (
	"Fecha" VARACHAR(25) NOT NULL,
	"Hora" VARACHAR(25) NOT NULL,
	"EquipoA" VARACHAR(25) NOT NULL,
	"EquipoB" VARACHAR(25) NOT NULL,
	"Ganador" VARACHAR(25),
	"PartidoId" INTEGER,
	PRIMARY KEY("PartidoId" AUTOINCREMENT),
);

--------------------------------------------------------------------------------------

CREATE TABLE "TablasTorneos" (
	"PuntajeTorneo" INTEGER NOT NULL,
	"EquipoId" INTEGER NOT NULL,
	"TorneoId" INTEGER NOT NULL,
    "TablasTorneoId" INTEGER,
	PRIMARY KEY("TablasTorneoId" AUTOINCREMENT),
	FOREIGN KEY("EquipoId") REFERENCES "Equipos"("EquipoId"),
	FOREIGN KEY("TorneoId") REFERENCES "Torneos"("TorneoId")
);

CREATE TABLE "TablasPartidos" (
	"PuntajePartido" INTEGER NOT NULL,
	"EquipoId" INTEGER NOT NULL,
	"PartidosId" INTEGER NOT NULL,
    "TablasPartidoId" INTEGER,
	PRIMARY KEY("TablasPartidoId" AUTOINCREMENT),
	FOREIGN KEY("EquipoId") REFERENCES "Equipos"("EquipoId"),
	FOREIGN KEY("PartidoId") REFERENCES "Partidos"("PartidoId")
);

--------------------------------------------------------------------------------------

CREATE TABLE "TablaPuntajeTotal" (
	"PuntajeTorneoId" INTEGER NOT NULL,
	"PuntajePartidoId" INTEGER NOT NULL,
    "TablaPuntajeTotalId" INTEGER,
	PRIMARY KEY("TablaPuntajeTotalId" AUTOINCREMENT),
	FOREIGN KEY("PuntajeTorneoId") REFERENCES "TablasTorneos"("PuntajeTorneoId"),
	FOREIGN KEY("PuntajePartidoId") REFERENCES "TablasPartidos"("PuntajePartidoId"),
);

--------------------------------------------------------------------------------------

--6 Equipos
--12 Jugadores
--2 Torneos
--Puntaje

INSERT INTO Equipos(Nombre, Deporte, Jugadores)
VALUES ("Los Campeones", "Futbol", 12), ("Rapidos Y Felices", "Futbol", 7),
("Juanes", "El que pinte", 20), ("Los polenta", "Ajedres", 3),
("Los Profes", "Ajedres", 10), ("Subime los puntos gil", "Futbol",1);

INSERT INTO Jugadores(Nombre, Apellido, EquipoId)
VALUES 
("Diego", "Villace", 1), ("Tomas", "Aragon", 1), 
("Santi", "Pardo", 2), ("Lautaro", "Oratual", 2),
("Juan", "Perez", 3), ("Juan", "Mendez", 3),
("Walter", "Carraje", 4), ("Roberto", "Socrates", 4), 
("Andres", "Navarro", 5), ("Eduardo", "Mestrovich", 5), ("Julian", "Impeluso", 5),
("Joaquin", "Pirillo", 6);

INSERT INTO Torneos(Deporte, EquipoId)
VALUES ("Boxeo Acuatico", 3), ("Ajedres", 5);