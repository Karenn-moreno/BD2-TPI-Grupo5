---Comentario de prueba
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