
INSERT INTO USUARIO (Nombre, Apellido, FechaNacimiento, Email, Pass, Dni, Telefono, FechaRegistro)
VALUES
('Mar�a', 'G�mez', '1995-10-15', 'mariagomez@gmail.com', 'A7pQ3fT8', '35123456', '1168765432', '2020-5-20'),
('Juan', 'P�rez', '1990-1-5', 'juan.perez@yahoo.com', 'h9Lm2sW5', '33456789', '1143210987', '2019-11-10'),
('Ana', 'L�pez', '2001-7-23', 'analopez@outlook.es', 'r4Jk1yN6', '40112233', '1130987654', '2022-3-18'),
('Carlos', 'Rodr�guez', '1985-3-12', 'carlosrodriguez@live.com', 'e6Dc7uG3', '28998877', '1152345678', '2018-8-25'),
('Sof�a', 'Mart�nez', '1999-12-30', 'sofia.martinez@gmail.com', 'b1Za8oP4', '38765432', '1160123456', '2021-9-1'),
('Diego', 'S�nchez', '1993-6-1', 'diego_sanchez@hotmail.com', 't5Xr9qM1', '34554433', '1147890123', '2020-2-14'),
('Laura', 'Fern�ndez', '1988-9-8', 'laurafernandez@yahoo.com', 'p2Yv6hL7', '31221100', '1159012345', '2019-4-5'),
('Facundo', 'Gim�nez', '2000-2-19', 'facu_gimenez@outlook.es', 'w8Ns3cK9', '39009988', '1136789012', '2022-1-28'),
('Valentina', 'D�az', '1996-5-17', 'valen.diaz@live.com', 'm3Qb5eZ0', '36776655', '1164567890', '2020-10-3'),
('Pedro', 'Herrera', '1980-11-25', 'pedroherrera@gmail.com', 'k0Ij4rA2', '25887766', '1141234567', '2017-7-11'),
('Emilia', 'Castro', '1997-8-6', 'emilia_castro@hotmail.com', 'v7Fd1sB9', '37112233', '1150001111', '2021-4-15'),
('Ricardo', 'N��ez', '1975-1-10', 'ricardo.nunez@empresa.com', 'Q9wE5rT1', '24556677', '1158765432', '2016-3-20');


INSERT INTO Pelicula (Titulo, Clasificacion, Duracion, Genero)

VALUES
('Mar�a', 'G�mez', '1995-10-15', 'mariagomez@gmail.com', 'A7pQ3fT8', '35123456', '1168765432', '2020-5-20'),
('Juan', 'P�rez', '1990-1-5', 'juan.perez@yahoo.com', 'h9Lm2sW5', '33456789', '1143210987', '2019-11-10'),
('Ana', 'L�pez', '2001-7-23', 'analopez@outlook.es', 'r4Jk1yN6', '40112233', '1130987654', '2022-3-18'),
('Carlos', 'Rodr�guez', '1985-3-12', 'carlosrodriguez@live.com', 'e6Dc7uG3', '28998877', '28998877', '2018-8-25'),
('Sof�a', 'Mart�nez', '1999-12-30', 'sofia.martinez@gmail.com', 'b1Za8oP4', '38765432', '1160123456', '2021-9-1'),
('Diego', 'S�nchez', '1993-6-1', 'diego_sanchez@hotmail.com', 't5Xr9qM1', '34554433', '1147890123', '2020-2-14'),
('Laura', 'Fern�ndez', '1988-9-8', 'laurafernandez@yahoo.com', 'p2Yv6hL7', '31221100', '1159012345', '2019-4-5'),
('Facundo', 'Gim�nez', '2000-2-19', 'facu_gimenez@outlook.es', 'w8Ns3cK9', '39009988', '1136789012', '2022-1-28'),
('Valentina', 'D�az', '1996-5-17', 'valen.diaz@live.com', 'm3Qb5eZ0', '36776655', '1164567890', '2020-10-3'),
('Pedro', 'Herrera', '1980-11-25', 'pedroherrera@gmail.com', 'k0Ij4rA2', '25887766', '1141234567', '2017-7-11'),
('Emilia', 'Castro', '1997-8-6', 'emilia_castro@hotmail.com', 'v7Fd1sB9', '37112233', '1150001111', '2021-4-15'),
('Ricardo', 'N��ez', '1975-1-10', 'ricardo.nunez@empresa.com', 'Q9wE5rT1', '24556677', '1158765432', '2016-3-20');

INSERT INTO PELICULA (Titulo, Clasificacion, Duracion, Genero, FechaEstreno)
VALUES
('Una batalla tras otra', '+16', '170', 'Acci�n', '2025-11-01'),
('Argentina, 1985', '+13', '140', 'Drama Hist�rico', '2025-11-05'),
('Dune: Parte Dos', '+13', '166', 'Ciencia Ficci�n', '2025-11-10'),
('Anatom�a de una ca�da', '+16', '151', 'Thriller Judicial', '2025-11-15'),
('El Padre', '+13', '97', 'Drama', '2025-11-03'),
('Pobres criaturas', '+18', '141', 'Ciencia Ficci�n', '2025-11-06'),
('Nomadland', '+13', '108', 'Drama', '2025-11-08'),
('As bestas', '+16', '137', 'Thriller', '2025-11-02'),
('Close', '+13', '105', 'Drama', '2025-11-20'),
('El Pr�fugo', '+16', '92', 'Drama', '2025-11-01'),
('Oppenheimer', '+13', '180', 'Biograf�a/Drama', '2025-11-04'),
('Perfect Days', '+13', '123', 'Drama', '2025-11-09'),
('T�R', '+16', '158', 'Drama Musical', '2025-12-05');

INSERT INTO TIPODESALA (Nombre, PrecioAdicional)
VALUES
('Est�ndar', '1'),
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

INSERT INTO FUNCION (idPelicula, idSala, FechaYHora)
VALUES
('1', '4', '2025-11-11 18:00:00'),
('2', '11', '2025-11-15 12:00:00'),
('4', '6', '2025-11-23 21:00:00'),
('12', '5', '2025-11-17 18:00:00'),
('11', '2', '2025-11-10 16:00:00'),
('10', '8', '2025-11-01 12:00:00'),
('5', '7', '2025-11-12 13:00:00'),
('8', '8', '2025-11-17 20:00:00'),
('3', '3', '2025-11-14 22:00:00'),

('6', '5', '2025-11-6 18:00:00'),
('1', '4', '2025-11-5 19:00:00'),
('10', '1', '2025-11-2 14:00:00');

