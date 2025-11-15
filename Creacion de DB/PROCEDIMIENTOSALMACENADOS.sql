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


--realiza las rutinas validas para reprogramar una funcion
CREATE PROCEDURE sp_ReprogramarFuncion
    @idFuncion INT,          
    @NuevaFechaYHora DATETIME2, 
    @NuevoIdSala INT         
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;
        -- validar que la función y la sala existan
        IF NOT EXISTS (SELECT 1 FROM FUNCION WHERE id = @idFuncion)
        BEGIN
            RAISERROR('Error: La funcion con ID %d no existe.', 16, 1, @idFuncion);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM SALA WHERE id = @NuevoIdSala)
        BEGIN
            RAISERROR('Error: La sala con ID %d no existe.', 16, 1, @NuevoIdSala);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- validacion de entradas vendidas
        DECLARE @SalaActual INT;
        SELECT @SalaActual = idSala FROM FUNCION WHERE id = @idFuncion;

        -- si la sala está cambiando y hay entradas vendidas...
        IF (@SalaActual <> @NuevoIdSala) AND EXISTS (SELECT 1 FROM ENTRADA WHERE idFuncion = @idFuncion)
        BEGIN
            RAISERROR('Error: No se puede cambiar de sala una funcion que ya tiene entradas vendidas. Esto viola la integridad de los asientos (Trigger TR_AsientoSala). Primero debe anular las ventas asociadas.',16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        --validar conflictos de horario
        DECLARE @MiNuevoInicio DATETIME2 = @NuevaFechaYHora;
        DECLARE @MiDuracion INT;
        DECLARE @MiNuevoFin DATETIME2;

        -- Obtener la duración de la película de esta función
        SELECT @MiDuracion = p.Duracion 
        FROM PELICULA p
        JOIN FUNCION f ON p.id = f.idPelicula
        WHERE f.id = @idFuncion;

        -- calcular la hora de fin de nuestra función
        SET @MiNuevoFin = DATEADD(minute, @MiDuracion, @MiNuevoInicio);

        -- Buscamos si OTRA función se superponeen 
        IF EXISTS (
            SELECT 1
            FROM FUNCION f
            JOIN PELICULA p ON f.idPelicula = p.id
            WHERE 
                f.idSala = @NuevoIdSala      
            AND f.id <> @idFuncion           
            AND @MiNuevoInicio < DATEADD(minute, p.Duracion, f.FechaYHora) 
            AND f.FechaYHora < @MiNuevoFin 
        )
        BEGIN
            RAISERROR('Error de conflicto: La sala %d ya esta ocupada en ese horario.', 16, 1, @NuevoIdSala);
            ROLLBACK TRANSACTION;
            RETURN;
        END
        -- actualizamos la función
        UPDATE FUNCION
        SET 
            FechaYHora = @NuevaFechaYHora,
            idSala = @NuevoIdSala
        WHERE 
            id = @idFuncion;

        COMMIT TRANSACTION;

        PRINT 'La funcion ID ' + CAST(@idFuncion AS VARCHAR) + ' ha sido reprogramada exitosamente.';
    END TRY
    BEGIN CATCH
        --si hay falla ,deshacemos todo
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        -- Re-lanzamos el error original 
        PRINT 'Ocurrio un error. Se revirtio la operacion.';
        THROW; 
    END CATCH
END;
GO

--Probar conflicto de horario
/*EXEC sp_ReprogramarFuncion 
    @idFuncion = 3,
    @NuevaFechaYHora = '2025-11-14 21:30:00', -- superpone
    @NuevoIdSala = 3;
*/