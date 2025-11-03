
---vista_FuncionesDisponibles : lista de todas las funciones disponibles por pelicula, sala y horario

CREATE VIEW vista_FuncionesDisponibles
AS
SELECT 
    f.id AS idFuncion,
    p.Titulo AS Pelicula,
    s.NumeroSala,
    ts.Nombre AS TipoDeSala,
    f.FechaYHora AS Horario,
    p.Duracion,
    p.Clasificacion,
    f.PrecioBase
FROM 
    Funcion AS f
INNER JOIN 
    Pelicula AS p ON f.idPelicula = p.id
INNER JOIN 
    Sala AS s ON f.idSala = s.id
INNER JOIN 
    TipoDeSala AS ts ON s.idTipoDeSala = ts.id
WHERE 
    s.EstadoSala = 1            -- salas activas
    AND f.FechaYHora >= GETDATE() -- funciones que aun no han comenzado

---vista_Estrenos : lista las funciones estrenadas en los últimos 14 días. Muestra día y horario de la función, titulo de la película, duración y género.


CREATE VIEW vista_UltimosEstrenos 
AS
SELECT
	p.Titulo, p.Genero, p.Duracion, CAST(f.FechaYHora AS date) AS Dia, CAST(f.FechaYHora AS TIME) AS Horario
FROM
	Funcion AS f
INNER JOIN
	Pelicula AS p ON f.idPelicula = p.id
WHERE
	f.FechaYHora >= DATEADD(day, -14, GETDATE())
	AND
	f.FechaYHora <= GETDATE()

---vista_EstrenosProximos : lista las funciones a estrenarse en los próximos 7 días. Muestra día y horario de la función, titulo de la película, duración y género.
	
CREATE VIEW vista_EstrenosProximos 
AS
SELECT
	p.Titulo, p.Genero, p.Duracion, CAST(f.FechaYHora AS date) AS Dia, CAST(f.FechaYHora AS TIME) AS Horario
FROM
	Funcion AS f
INNER JOIN
	Pelicula AS p ON f.idPelicula = p.id
WHERE
	f.FechaYHora <= DATEADD(day, 7, GETDATE())
	AND
	f.FechaYHora >= GETDATE()

