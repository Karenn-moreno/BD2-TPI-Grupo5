
INSERT INTO USUARIO (Nombre, Apellido, FechaNacimiento, Email, Pass, Dni, Telefono, FechaRegistro)
VALUES
('Maria', 'Gomez', '1995-10-15', 'mariagomez@gmail.com', 'A7pQ3fT8', '35123456', '1168765432', '2020-5-20'),
('Juan', 'Perez', '1990-1-5', 'juan.perez@yahoo.com', 'h9Lm2sW5', '33456789', '1143210987', '2019-11-10'),
('Ana', 'Lopez', '2001-7-23', 'analopez@outlook.es', 'r4Jk1yN6', '40112233', '1130987654', '2022-3-18'),
('Carlos', 'Rodriguez', '1985-3-12', 'carlosrodriguez@live.com', 'e6Dc7uG3', '28998877', '1152345678', '2018-8-25'),
('Sofia', 'Martinez', '1999-12-30', 'sofia.martinez@gmail.com', 'b1Za8oP4', '38765432', '1160123456', '2021-9-1'),
('Diego', 'Sanchez', '1993-6-1', 'diego_sanchez@hotmail.com', 't5Xr9qM1', '34554433', '1147890123', '2020-2-14'),
('Laura', 'Fernandez', '1988-9-8', 'laurafernandez@yahoo.com', 'p2Yv6hL7', '31221100', '1159012345', '2019-4-5'),
('Facundo', 'Gimenez', '2000-2-19', 'facu_gimenez@outlook.es', 'w8Ns3cK9', '39009988', '1136789012', '2022-1-28'),
('Valentina', 'Diaz', '1996-5-17', 'valen.diaz@live.com', 'm3Qb5eZ0', '36776655', '1164567890', '2020-10-3'),
('Pedro', 'Herrera', '1980-11-25', 'pedroherrera@gmail.com', 'k0Ij4rA2', '25887766', '1141234567', '2017-7-11'),
('Emilia', 'Castro', '1997-8-6', 'emilia_castro@hotmail.com', 'v7Fd1sB9', '37112233', '1150001111', '2021-4-15'),
('Ricardo', 'Nunes', '1975-1-10', 'ricardo.nunez@empresa.com', 'Q9wE5rT1', '24556677', '1158765432', '2016-3-20');


INSERT INTO PELICULA (Titulo, Clasificacion, Duracion, Genero, FechaEstreno)
VALUES
('Una batalla tras otra', '+16', '170', 'Accion', '2025-11-01'),
('Argentina, 1985', '+13', '140', 'Drama Historico', '2025-11-05'),
('Dune: Parte Dos', '+13', '166', 'Ciencia Ficcion', '2025-11-10'),
('Anatomia de una caida', '+16', '151', 'Thriller Judicial', '2025-11-15'),
('El Padre', '+13', '97', 'Drama', '2025-11-03'),
('Pobres criaturas', '+18', '141', 'Ciencia Ficcion', '2025-11-06'),
('Nomadland', '+13', '108', 'Drama', '2025-11-08'),
('As bestas', '+16', '137', 'Thriller', '2025-11-02'),
('Close', '+13', '105', 'Drama', '2025-11-20'),
('El Profugo', '+16', '92', 'Drama', '2025-11-01'),
('Oppenheimer', '+13', '180', 'Biografia/Drama', '2025-11-04'),
('Perfect Days', '+13', '123', 'Drama', '2025-11-09'),
('TAR', '+16', '158', 'Drama Musical', '2025-12-05'),
('El Padrino', '+18', '175', 'Drama/Crimen', '2025-11-17'),
('Pulp Fiction', '+18', '154', 'Crimen/Drama', '2025-11-18'),
('El Caballero de la Noche', '+13', '152', 'Accion', '2025-11-19'),
('La Lista de Schindler', '+16', '195', 'Drama Historico', '2025-11-20'),
('Forrest Gump', '+13', '142', 'Comedia Dramatica', '2025-11-21'),
('El Origen', '+13', '148', 'Ciencia Ficcion', '2025-11-22'),
('Matrix', '+16', '136', 'Ciencia Ficcion', '2025-11-23'),
('Interstellar', '+13', '169', 'Ciencia Ficcion', '2025-11-25'),
('Gladiador', '+16', '155', 'Accion/Drama', '2025-11-27'),
('Parásitos', '+18', '132', 'Thriller/Comedia Negra', '2025-11-28');

INSERT INTO TIPODESALA (Nombre, PrecioAdicional)
VALUES
('Estandar', '1'),
('3D', '1.4'),
('4D', '1.7'),
('IMAX', '2');

INSERT INTO SALA (NumeroSala, idTipoDeSala)
VALUES
('1', '1'),
('2', '1'),
('3', '1'),
('4', '2'),
('5', '2'),
('6', '2'),
('7', '3'),
('8', '3'),
('9', '3'),
('10', '4'),
('11', '4'),
('12', '4');

INSERT INTO FUNCION (idPelicula, idSala, FechaYHora, PrecioBase)
VALUES
('1', '4', '2025-11-11 18:00:00', '8000'),
('2', '11', '2025-11-15 12:00:00', '8000'),
('4', '6', '2025-11-23 21:00:00', '8000'),
('12', '5', '2025-11-17 18:00:00', '8000'),
('11', '2', '2025-11-10 16:00:00', '8000'),
('10', '8', '2025-11-01 12:00:00', '8000'),
('5', '7', '2025-11-12 13:00:00', '8000'),
('8', '8', '2025-11-17 20:00:00', '8000'),
('3', '3', '2025-11-14 22:00:00', '8000'),
('6', '5', '2025-11-6 18:00:00', '8000'),
('1', '4', '2025-11-5 19:00:00', '8000'),
('10', '1', '2025-11-2 14:00:00', '8000'),
('1', '4', '2025-11-20 13:00:00', '8000'),
('9', '3', '2025-11-20 18:00:00', '8000'),
('18', '1', '2025-11-21 15:00:00', '8000'),
('2', '1', '2025-11-21 17:52:00', '8000'),
('15', '1', '2025-11-21 20:42:00', '8000'),
('1', '1', '2025-11-22 14:00:00', '8000'),
('11', '2', '2025-11-21 14:00:00', '8000'),
('11', '2', '2025-11-21 17:30:00', '8000'),
('16', '2', '2025-11-21 21:00:00', '8000'),
('19', '2', '2025-11-22 20:02:00', '8000'),
('9', '3', '2025-11-22 16:00:00', '8000'),
('16', '3', '2025-11-22 18:15:00', '8000'),
('3', '3', '2025-11-22 21:17:00', '8000'),
('1', '4', '2025-11-22 17:00:00', '8000'),
('14', '4', '2025-11-22 20:20:00', '8000'),
('12', '5', '2025-11-23 15:00:00', '8000'),
('18', '5', '2025-11-23 17:33:00', '8000'),
('6', '5', '2025-11-23 20:25:00', '8000'),
('19', '6', '2025-11-24 14:00:00', '8000'),
('5', '6', '2025-11-24 16:58:00', '8000'),
('23', '6', '2025-11-24 19:05:00', '8000'),
('7', '7', '2025-11-24 15:00:00', '8000'),
('12', '7', '2025-11-24 17:18:00', '8000'),
('20', '7', '2025-11-24 19:51:00', '8000'),
('10', '8', '2025-11-25 16:00:00', '8000'),
('8', '8', '2025-11-25 18:02:00', '8000'),
('14', '8', '2025-11-25 20:49:00', '8000'),
('13', '9', '2025-11-25 14:00:00', '8000'),
('13', '9', '2025-11-25 17:08:00', '8000'),
('4', '9', '2025-11-25 20:16:00', '8000'),
('18', '9', '2025-11-26 17:18:00', '8000'),
('21', '9', '2025-11-26 20:10:00', '8000'),
('17', '10', '2025-11-26 15:00:00', '8000'),
('22', '10', '2025-11-26 18:45:00', '8000'),
('21', '10', '2025-11-26 21:50:00', '8000'),
('19', '11', '2025-11-26 18:00:00', '8000'),
('2', '11', '2025-11-26 21:00:00', '8000'),
('5', '11', '2025-11-27 15:00:00', '8000'),
('23', '12', '2025-11-27 15:00:00', '8000'),
('20', '12', '2025-11-27 17:42:00', '8000'),
('22', '12', '2025-11-27 20:28:00', '8000'),
('15', '12', '2025-11-28 16:00:00', '8000');

INSERT INTO TIPODEASIENTO (Nombre, PrecioAdicional)
VALUES
('Estandar', '0'),
('VIP', '2000');


DECLARE @Filas TABLE (Fila CHAR(1), EsVIP BIT);
INSERT INTO @Filas (Fila, EsVIP) VALUES
('A', 0),
('B', 0),
('C', 0),
('D', 1),
('E', 1),
('F', 0),
('G', 0),
('H', 0);

DECLARE @Numeros TABLE (Numero INT);
INSERT INTO @Numeros (Numero) VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

INSERT INTO ASIENTO (idSala, idTipoDeAsiento, Fila, Numero)
SELECT 
    s.id,
    CASE WHEN f.EsVIP = 1 THEN 2 ELSE 1 END,
    f.Fila,
    n.Numero
FROM SALA s
CROSS JOIN @Filas f
CROSS JOIN @Numeros n;


INSERT INTO VENTA (idUsuario, FechaYHora, EstadoVenta, Monto)
VALUES
('1',  '2025-11-01 10:00:00', '1', '6000'),
('3',  '2025-11-01 11:30:00', '1', '10500'),
('5',  '2025-11-02 15:45:00', '1', '4000'),
('7',  '2025-11-03 09:15:00', '1', '5600'),
('9',  '2025-11-03 20:10:00', '1', '2500'),
('2',  '2025-11-18 10:00:00', '1', '2500'),
('4',  '2025-11-19 11:30:00', '1', '0'),
('6',  '2025-11-20 15:45:00', '1', '0');
    


INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '1', '1', a.id, '3000'
FROM ASIENTO a
WHERE a.idSala = 4 AND a.Fila = 'A' AND a.Numero = 1;

INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '1', '1', a.id, '3000'
FROM ASIENTO a
WHERE a.idSala = 4 AND a.Fila = 'A' AND a.Numero = 2;

INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '2', '6', a.id, '3500'
FROM ASIENTO a
WHERE a.idSala = 8 AND a.Fila = 'A' AND a.Numero = 1;

INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '2', '6', a.id, '3500'
FROM ASIENTO a
WHERE a.idSala = 8 AND a.Fila = 'A' AND a.Numero = 2;

INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '2', '6', a.id, '3500'
FROM ASIENTO a
WHERE a.idSala = 8 AND a.Fila = 'B' AND a.Numero = 1;

INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '3', '2', a.id, '4000'
FROM ASIENTO a
WHERE a.idSala = 11 AND a.Fila = 'A' AND a.Numero = 1;

INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '4', '12', a.id, '2800'
FROM ASIENTO a
WHERE a.idSala = 1 AND a.Fila = 'A' AND a.Numero = 1;

INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '4', '12', a.id, '2800'
FROM ASIENTO a
WHERE a.idSala = 1 AND a.Fila = 'A' AND a.Numero = 2;

INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '5', '9', a.id, '2500'
FROM ASIENTO a
WHERE a.idSala = 3 AND a.Fila = 'A' AND a.Numero = 1;

INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '6', '3', a.id, '8000'
FROM ASIENTO a
WHERE a.idSala = (SELECT idSala FROM Funcion WHERE id = 3)
  AND a.Fila = 'A' AND a.Numero = 3;

INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '7', '4', a.id, '8000'
FROM ASIENTO a
WHERE a.idSala = (SELECT idSala FROM Funcion WHERE id = 4)
  AND a.Fila = 'A' AND a.Numero = 4;

INSERT INTO ENTRADA (idVenta, idFuncion, idAsiento, Precio)
SELECT '8', '8', a.id, '8000'
FROM ASIENTO a
WHERE a.idSala = (SELECT idSala FROM Funcion WHERE id = 8)
  AND a.Fila = 'A' AND a.Numero = 5;

