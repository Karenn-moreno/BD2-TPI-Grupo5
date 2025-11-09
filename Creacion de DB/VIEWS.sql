
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

---vista_Estrenos : lista las funciones de las películas estrenadas en los últimos 7 días. Muestra día y horario de la función, titulo de la película, duración y género.

CREATE VIEW vista_UltimosEstrenos 
AS
SELECT
    p.Titulo, f.FechaYHora as 'Fecha y hora de proyeccción', p.Duracion, p.Genero, p.FechaEstreno as 'Fecha de estreno'
FROM
    Pelicula p
INNER JOIN 
    Funcion f ON f.idPelicula = p.id
WHERE
    p.FechaEstreno >= DATEADD(day, -7, GETDATE())
AND
    p.FechaEstreno <= GETDATE()


---vista_EstrenosProximos : lista las funciones de las películas a estrenarse en los próximos 7 días. Muestra día y horario de la función, titulo de la película, duración y género.
	
CREATE VIEW vista_EstrenosProximos 
AS
SELECT
	 p.Titulo, f.FechaYHora as 'Fecha y hora de proyeccción', p.Duracion, p.Genero, p.FechaEstreno as 'Fecha de estreno'
FROM
    Pelicula p
INNER JOIN 
    Funcion f ON f.idPelicula = p.id
WHERE
	p.FechaEstreno <= DATEADD(day, 7, GETDATE())
	AND
	p.FechaEstreno >= GETDATE()

 

