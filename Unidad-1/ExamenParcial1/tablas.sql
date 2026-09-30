CREATE DATABASE IF NOT EXISTS selva_viva;

USE selva_viva;

CREATE TABLE Especies (
    id_especie INT AUTO_INCREMENT PRIMARY KEY,
    nombre_comun VARCHAR(100) NOT NULL,
    nombre_cientifico VARCHAR(150) NOT NULL,
    bioma VARCHAR(100) NOT NULL,
    clima VARCHAR(50) NOT NULL,
    habitos VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE Recintos (
    id_recinto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_recinto VARCHAR(100) NOT NULL,
    bioma VARCHAR(100) NOT NULL,
    clima VARCHAR(50) NOT NULL,
    capacidad_maxima INT NOT NULL,
    cupo_disponible INT NOT NULL,
    disponibilidad VARCHAR(30) NOT NULL,
    CHECK (cupo_disponible >= 0)
) ENGINE=InnoDB;

CREATE TABLE Animales (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    expediente VARCHAR(20) NOT NULL,
    nombre_animal VARCHAR(100),
    sexo VARCHAR(20),
    fecha_ingreso DATE NOT NULL,
    estado_salud VARCHAR(30) NOT NULL,
    id_especie INT NOT NULL,
    id_recinto INT,
    FOREIGN KEY (id_especie) REFERENCES Especies(id_especie),
    FOREIGN KEY (id_recinto) REFERENCES Recintos(id_recinto)
) ENGINE=InnoDB;

CREATE TABLE EvaluacionesMedicas (
    id_evaluacion INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT NOT NULL,
    fecha_evaluacion DATE NOT NULL,
    diagnostico VARCHAR(255) NOT NULL,
    tratamiento VARCHAR(255),
    observaciones VARCHAR(255),
    estado_salud VARCHAR(30) NOT NULL,
    FOREIGN KEY (id_animal) REFERENCES Animales(id_animal)
) ENGINE=InnoDB;

CREATE TABLE Movimientos (
    id_movimiento INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT NOT NULL,
    fecha_movimiento DATE NOT NULL,
    tipo_movimiento VARCHAR(30) NOT NULL,
    recinto_origen INT,
    recinto_destino INT,
    destino_externo VARCHAR(150),
    motivo VARCHAR(255),
    FOREIGN KEY (id_animal) REFERENCES Animales(id_animal),
    FOREIGN KEY (recinto_origen) REFERENCES Recintos(id_recinto),
    FOREIGN KEY (recinto_destino) REFERENCES Recintos(id_recinto)
) ENGINE=InnoDB;