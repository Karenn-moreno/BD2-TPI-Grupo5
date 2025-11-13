
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


---vista_Estrenos : lista las funciones de las pel�culas estrenadas en los �ltimos 7 d�as. Muestra d�a y horario de la funci�n, titulo de la pel�cula, duraci�n y g�nero.

CREATE VIEW vista_UltimosEstrenos 
AS
SELECT
    p.Titulo, f.FechaYHora as 'Fecha y hora de proyeccci�n', p.Duracion, p.Genero, p.FechaEstreno as 'Fecha de estreno'
FROM
    Pelicula p
INNER JOIN 
    Funcion f ON f.idPelicula = p.id
WHERE
    p.FechaEstreno >= DATEADD(day, -7, GETDATE())
AND
    p.FechaEstreno <= GETDATE()


---vista_EstrenosProximos : lista las funciones de las pel�culas a estrenarse en los pr�ximos 7 d�as. Muestra d�a y horario de la funci�n, titulo de la pel�cula, duraci�n y g�nero.
	
CREATE VIEW vista_EstrenosProximos 
AS
SELECT
	 p.Titulo, f.FechaYHora as 'Fecha y hora de proyeccci�n', p.Duracion, p.Genero, p.FechaEstreno as 'Fecha de estreno'
FROM
    Pelicula p
INNER JOIN 
    Funcion f ON f.idPelicula = p.id
WHERE
	p.FechaEstreno <= DATEADD(day, 7, GETDATE())
	AND
	p.FechaEstreno >= GETDATE()


	

CREATE VIEW vista_ClientesConEntradas
AS
SELECT
    u.id              AS idUsuario,
    u.Nombre          AS Nombre,
    u.Apellido        AS Apellido,
    u.Email           AS Email,
    v.id              AS idVenta,
    v.FechaYHora      AS FechaVenta,
    e.id              AS idEntrada,
    e.Precio          AS PrecioEntrada,
    f.id              AS idFuncion,
    f.FechaYHora      AS FechaFuncion,
    p.Titulo          AS Pelicula,
    s.NumeroSala      AS NumeroSala,
    ts.Nombre         AS TipoDeSala,
    a.Fila            AS FilaAsiento,
    a.Numero          AS NumeroAsiento,
    ta.Nombre         AS TipoDeAsiento
FROM Usuario         AS u
INNER JOIN Venta         AS v  ON v.idUsuario      = u.id
INNER JOIN Entrada       AS e  ON e.idVenta        = v.id
INNER JOIN Funcion       AS f  ON e.idFuncion      = f.id
INNER JOIN Pelicula      AS p  ON f.idPelicula     = p.id
INNER JOIN Sala          AS s  ON f.idSala         = s.id
INNER JOIN TipoDeSala    AS ts ON s.idTipoDeSala   = ts.id
INNER JOIN Asiento       AS a  ON e.idAsiento      = a.id
INNER JOIN TipoDeAsiento AS ta ON a.idTipoDeAsiento = ta.id
WHERE
    v.EstadoVenta = 1
    AND f.FechaYHora >= GETDATE();


 


