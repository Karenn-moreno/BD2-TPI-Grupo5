--grupo05

CREATE DATABASE BD2_TPI_G05
GO 

USE BD2_TPI_G05
GO

CREATE TABLE TipoDeSala (
    id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL UNIQUE,
    PrecioAdicional FLOAT NOT NULL DEFAULT 0
);

CREATE TABLE Sala (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    NumeroSala INT NOT NULL,
    idTipoDeSala INT NOT NULL,
    EstadoSala BIT NOT NULL DEFAULT 1,

    FOREIGN KEY (idTipoDeSala) REFERENCES TipoDeSala(id)
);

CREATE TABLE TipoDeAsiento (
    id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL UNIQUE,
    PrecioAdicional FLOAT NOT NULL DEFAULT 0
);

CREATE TABLE Asiento (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    idSala BIGINT NOT NULL,
    idTipoDeAsiento INT NOT NULL,
    Fila VARCHAR(2) NOT NULL,
    Numero INT NOT NULL,
    EstadoAsiento BIT NOT NULL DEFAULT 1,

    FOREIGN KEY (idSala) REFERENCES Sala(id),
    FOREIGN KEY (idTipoDeAsiento) REFERENCES TipoDeAsiento(id),
    UNIQUE (idSala, Fila, Numero) 
);

CREATE TABLE Pelicula (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    Titulo VARCHAR(50) NOT NULL,
    Clasificacion VARCHAR(50),
    Duracion INT NOT NULL, /* Duración en minutos */
    Genero VARCHAR(50),
    FechaEstreno DATE NOT NULL
);

CREATE TABLE Funcion (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    idPelicula BIGINT NOT NULL,
    idSala BIGINT NOT NULL,
    FechaYHora DATETIME2 NOT NULL,
    PrecioBase INT NOT NULL DEFAULT 0,

    FOREIGN KEY (idPelicula) REFERENCES Pelicula(id),
    FOREIGN KEY (idSala) REFERENCES Sala(id),
    UNIQUE (idSala, FechaYHora) 
);

CREATE TABLE Usuario (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    FechaNacimiento DATE,
    Email VARCHAR(50) NOT NULL UNIQUE,
    Pass VARCHAR(255) NOT NULL,
	Dni INT NOT NULL,
	Telefono INT NOT NULL,
	FechaRegistro DATE DEFAULT GETDATE(),
	Estado BIT DEFAULT 1 /* Usaremos 0 para INACTIVO, 1 para ACTIVO */
);

CREATE TABLE Venta (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    idUsuario BIGINT NOT NULL,
    FechaYHora DATETIME2 NOT NULL DEFAULT GETDATE(),
    EstadoVenta BIT NOT NULL DEFAULT 1,   /* 1 = Activa, 0 = Anulada */
    Monto INT NOT NULL DEFAULT 0,

    FOREIGN KEY (idUsuario) REFERENCES Usuario(id)
);

CREATE TABLE Entrada (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    idVenta BIGINT NOT NULL,
    idFuncion BIGINT NOT NULL,
    idAsiento BIGINT NOT NULL,
    Precio INT NOT NULL,

    FOREIGN KEY (idVenta) REFERENCES Venta(id),
    FOREIGN KEY (idFuncion) REFERENCES Funcion(id),
    FOREIGN KEY (idAsiento) REFERENCES Asiento(id),
    UNIQUE (idFuncion, idAsiento)
);