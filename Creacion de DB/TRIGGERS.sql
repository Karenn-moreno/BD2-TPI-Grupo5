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

COMMIT TRANSACTION;

GO

CREATE TRIGGER TR_SolapamientoFunciones
ON Funcion 
INSTEAD OF INSERT
AS
BEGIN
      DECLARE @idSala BIGINT
      DECLARE @fechayhora DATETIME2

      SELECT @idSala = idSala, @fechayhora = FechaYHora FROM inserted  


      IF(SELECT COUNT(*) FROM Funcion WHERE idSala=@idSala AND FechaYHora=@fechayhora) >= 1
      BEGIN
            RAISERROR (
            'Error de validacion: HORARIO YA OCUPADO EN LA SALA.',
            16,
            1
            );
      RETURN;
      END
      
      IF(
      SELECT COUNT(*)
      FROM Funcion F
      INNER JOIN Pelicula P ON F.idPelicula = P.id
      WHERE F.idSala=@idSala AND (@fechayhora<= DATEADD(minute, p.duracion + 20, fechayhora) AND @fechayhora >= FechaYHora)
      )>=1
      BEGIN
             RAISERROR (
            'Error de validacion: HORARIO YA OCUPADO EN LA SALA.',
            16,
            1
            );
      RETURN;
      END

    INSERT INTO Funcion(idPelicula, idSala, FechaYHora, PrecioBase)
    SELECT idPelicula, idSala, FechaYHora, PrecioBase FROM inserted
END;