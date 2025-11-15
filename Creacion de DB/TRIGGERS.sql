USE BD2_TPI_G05
GO

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
