USE `Loeza-Marrufo`;

CREATE TABLE IF NOT EXISTS Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    rut_dni VARCHAR(20) NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Mascota (
    id_mascota INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raza VARCHAR(50),
    fecha_nacimiento DATE,
    id_cliente INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Veterinario (
    id_veterinario INT AUTO_INCREMENT PRIMARY KEY,
    documento_identidad VARCHAR(20) NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    telefono VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Atencion (
    id_atencion INT AUTO_INCREMENT PRIMARY KEY,
    id_mascota INT NOT NULL,
    id_veterinario INT NOT NULL,
    fecha_hora DATETIME NOT NULL,
    diagnostico VARCHAR(255) NOT NULL,
    costo_base DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Medicamento (
    codigo_medicamento VARCHAR(20) PRIMARY KEY,
    nombre_comercial VARCHAR(100) NOT NULL,
    laboratorio VARCHAR(100) NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Prescripcion (
    id_prescripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_atencion INT NOT NULL,
    codigo_medicamento VARCHAR(20) NOT NULL,
    cantidad INT NOT NULL,
    indicaciones VARCHAR(255) NOT NULL
);