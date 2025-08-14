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

/*6)-----------------------------------------------------*/
