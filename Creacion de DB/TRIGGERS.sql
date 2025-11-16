USE BD2_TPI_G05
GO
--TR_AsientoSala: controla que el asiento corresponda a la sala de funcion a vender 
CREATE TRIGGER TR_AsientoSala
ON Entrada
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN Funcion f ON i.idFuncion = f.id
        JOIN Asiento a ON i.idAsiento = a.id
        WHERE f.idSala <> a.idSala
    )
    BEGIN
        RAISERROR (
            'Error de validacion: El asiento no pertenece a la sala de la funcion.',
            16,
            1
        );

        ROLLBACK TRANSACTION;
        RETURN;
    END
END;
GO
/*
-- se realiza INSERT que DEBE fallar
PRINT 'Probando el trigger con datos invalidos...';
GO

BEGIN TRANSACTION;
INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT 

    '5', -- idVenta (de Valentina Diaz)
    '1', -- idFuncion (Funcion 1, que es en la SALA 4)
    a.id, -- idAsiento
    '3000'

FROM ASIENTO a
WHERE 
    a.idSala = 1 AND a.Fila = 'A' AND a.Numero = 5;

COMMIT TRANSACTION;*/

GO

CREATE TRIGGER TR_SolapamientoFunciones
ON Funcion 
AFTER INSERT
AS
BEGIN
      SET NOCOUNT ON;
      IF EXISTS (
      SELECT 1
        FROM inserted i
        JOIN FUNCION f ON f.idSala = i.idSala
                       AND f.FechaYHora = i.FechaYHora
                       AND f.id <> i.id  
    )  
	BEGIN
        RAISERROR('Error: ya existe una función en esa sala con la misma fecha y hora.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
      
      IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN PELICULA p_i ON p_i.id = i.idPelicula
        JOIN FUNCION f ON f.idSala = i.idSala
                      AND f.id <> i.id     -- no compara con sí misma
        JOIN PELICULA p_f ON p_f.id = f.idPelicula
      WHERE 
            -- NuevoInicio < FinExistente
            i.FechaYHora < DATEADD(minute, p_f.Duracion + 20, f.FechaYHora)
            AND
            -- InicioExistente < NuevoFin
            f.FechaYHora < DATEADD(minute, p_i.Duracion + 20, i.FechaYHora)
    )
    BEGIN
        RAISERROR('Error: la sala ya está ocupada en ese horario (solapamiento detectado).', 16, 1);
        ROLLBACK TRANSACTION;
		RETURN;
    END
END;
GO

---actualiza el Monto de Venta segun sus Entradas
CREATE TRIGGER TR_ActualizarMontoVenta
ON Entrada
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    ;WITH VentasAfectadas AS (
        SELECT DISTINCT idVenta FROM inserted
        UNION
        SELECT DISTINCT idVenta FROM deleted
    )
    UPDATE v
    SET Monto = ISNULL(t.Total, 0)
    FROM Venta v
    INNER JOIN VentasAfectadas va ON v.id = va.idVenta
    LEFT JOIN (
        SELECT idVenta, SUM(Precio) AS Total
        FROM Entrada
        GROUP BY idVenta
    ) t ON v.id = t.idVenta;
END
GO
