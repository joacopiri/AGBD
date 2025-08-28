/*1)-----------------------------------------------------*/
SELECT FirstName, LastName FROM employees 
ORDER by FirstName, LastName ASC
/*2)-----------------------------------------------------*/
SELECT t.Name, t.Milliseconds FROM tracks t
INNER JOIN albums a on t.AlbumId = a.AlbumId
WHERE a.Title like "big ones" ORDER by t.Milliseconds DESC
/*3)-----------------------------------------------------*/
SELECT g.name, count(t.TrackId) as canciones FROM genres g
INNER JOIN tracks t on g.GenreId = t.GenreId
GROUP by g.name ORDER by canciones DESC
/*4)-----------------------------------------------------*/
SELECT a.Title, count(t.TrackId) as cantidad FROM albums a
INNER JOIN tracks t on a.AlbumId = t.AlbumId
GROUP by a.Title
HAVING cantidad >= 5 
ORDER by cantidad ASC
/*5)-----------------------------------------------------*/
SELECT a.title,  sum(t.UnitPrice) as Precio_Album FROM albums a
INNER JOIN tracks t on a.albumid = t.albumid
GROUP by  a.title 
ORDER by Precio_Album DESC
LIMIT 10
/*6)-----------------------------------------------------*/
SELECT t.name, g.name, a.title FROM tracks t
INNER JOIN genres g on t.genreid = g.genreId
INNER JOIN albums a on t.albumId = a.albumId 
WHERE t.UnitPrice like 0.99 
/*7)-----------------------------------------------------*/
SELECT t.name, t.Milliseconds, a.title, artists.name FROM tracks t
INNER JOIN albums a on t.albumId = a.albumId 
INNER JOIN artists on a.ArtistId = artists.ArtistId
ORDER by t.Milliseconds ASC
LIMIT 20
/*8)-----------------------------------------------------*/
SELECT e.LastName as Empleado, e.Title, j.LastName as Jefe, 
count(c.CustomerId) as Cantidad_Clientes FROM employees j
INNER JOIN employees e on j.EmployeeId = e.ReportsTo 
INNER JOIN customers c on e.EmployeeId = c.SupportRepId  
GROUP by Empleado ORDER by Cantidad_Clientes DESC
/*9)-----------------------------------------------------*/
INSERT INTO tracks(name, MediaTypeId, Milliseconds, UnitPrice)
VALUES ("cancion_1", 1, 1000, 0.99), ("cancion_2", 1, 1000, 0.99), 
("cancion_3", 1, 1000, 0.99), ("cancion_4", 1, 1000, 0.99)
/*10)-----------------------------------------------------*/
SELECT * FROM tracks t
ORDER by t.TrackId DESC
LIMIT 8
/*11)-----------------------------------------------------*/
UPDATE tracks
SET name = "cancion_4_modificada"
WHERE TrackId = 3507

UPDATE tracks
SET name = "cancion_3_modificada"
WHERE TrackId = 3506
/*12)-----------------------------------------------------*/
SELECT * FROM tracks
WHERE name like "%modificada"
/*13)-----------------------------------------------------*/
DELETE FROM tracks
WHERE TrackId BETWEEN 3508 AND 3511