---Cuenta, para cada día y función elegida, la cantidad de entradas vendidas. También informa fecha, hora y título de la película.
CREATE PROCEDURE sp_EntradasPorDia (@idFuncion BIGINT, @fecha DATETIME2)
AS
BEGIN
	SELECT CAST(@fecha as date) as 'Fecha Consultada', COUNT(*)  as 'Entradas Vendidas', Funcion.id as 'ID Funcion', Funcion.FechaYHora as 'Fecha y hora de la función', Pelicula.Titulo as 'Película'
	FROM Entrada
	INNER JOIN Venta ON Venta.id = Entrada.idVenta
	LEFT JOIN Funcion ON Entrada.idFuncion = Funcion.id
	INNER JOIN Pelicula ON Funcion.idPelicula = Pelicula.id
	WHERE Entrada.idFuncion = @idfuncion AND CAST(venta.FechaYHora as date) = CAST(@fecha as date)
	GROUP BY Funcion.id, Funcion.FechaYHora, Pelicula.Titulo
END
---EXEC sp_EntradasPorDia 6, '2025-11-01'



---Cuenta, para cada función elegida, la cantidad de entradas vendidas. También informa fecha, hora y título de la película.
CREATE PROCEDURE sp_EntradasPorFuncion (@idFuncion BIGINT)
AS
BEGIN
	SELECT COUNT(*) as 'Entradas Vendidas', Funcion.id as 'ID Funcion', Funcion.FechaYHora as 'Fecha y hora de la función', Pelicula.Titulo as 'Película'
	FROM Entrada
	INNER JOIN Venta ON Venta.id = Entrada.idVenta
	LEFT JOIN Funcion ON Entrada.idFuncion = Funcion.id
	INNER JOIN Pelicula ON Funcion.idPelicula = Pelicula.id
	WHERE Entrada.idFuncion = @idfuncion
	GROUP BY Funcion.id, Funcion.FechaYHora, Pelicula.Titulo
END
---EXEC sp_EntradasPorFuncion 12



---Cuenta, para cada película, el total de entradas vendidas.
CREATE PROCEDURE sp_EntradasPorPelícula (@idPelicula BIGINT)
AS
BEGIN
	SELECT COUNT(*) as 'Entradas Vendidas', p.Titulo, P.Duracion, p.Clasificacion, p.Genero
	FROM Entrada E
	INNER JOIN Funcion F ON E.idFuncion = F.id
	INNER JOIN Pelicula P ON F.idPelicula = P.id
	WHERE p.id = @idPelicula
GROUP BY p.Titulo, P.Duracion, p.Clasificacion, p.Genero
END
---EXEC sp_EntradasPorPelícula 10