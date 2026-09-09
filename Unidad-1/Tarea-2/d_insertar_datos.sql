USE `Loeza-Marrufo`;

INSERT INTO Cliente (rut_dni, nombre_completo, telefono, correo) VALUES
('DNI001', 'Ana Lopez', '9991111111', 'ana.lopez@gmail.com'),
('DNI002', 'Carlos Martinez', '9992222222', 'carlos.martinez@gmail.com'),
('DNI003', 'Sofia Hernandez', '9993333333', 'sofia.hernandez@gmail.com'),
('DNI004', 'Luis Ramirez', '9994444444', 'luis.ramirez@gmail.com'),
('DNI005', 'Maria Gonzalez', '9995555555', 'maria.gonzalez@gmail.com');

INSERT INTO Veterinario (documento_identidad, nombre_completo, especialidad, telefono) VALUES
('VET001', 'Dr. Juan Perez', 'Medicina General', '9996661111'),
('VET002', 'Dra. Laura Sanchez', 'Dermatologia Veterinaria', '9996662222'),
('VET003', 'Dr. Miguel Torres', 'Cirugia Veterinaria', '9996663333'),
('VET004', 'Dra. Elena Castillo', 'Medicina Interna', '9996664444'),
('VET005', 'Dr. Roberto Diaz', 'Cardiologia Veterinaria', '9996665555');

INSERT INTO Medicamento (codigo_medicamento, nombre_comercial, laboratorio, precio_unitario) VALUES
('MED001', 'Amoxicilina', 'Laboratorios Bayer', 120.00),
('MED002', 'Meloxicam', 'Laboratorios Zoetis', 95.00),
('MED003', 'Metronidazol', 'Laboratorios Pisa', 80.00),
('MED004', 'Prednisona', 'Laboratorios Sanfer', 65.00),
('MED005', 'Enrofloxacina', 'Laboratorios Virbac', 150.00);


INSERT INTO Mascota (nombre, especie, raza, fecha_nacimiento, id_cliente) VALUES
('Max', 'Perro', 'Labrador', '2020-05-10', 1),
('Luna', 'Gato', 'Siamés', '2021-08-15', 2),
('Rocky', 'Perro', 'Pastor Alemán', '2019-03-20', 3),
('Coco', 'Perro', 'Poodle', '2022-01-12', 4),
('Mia', 'Gato', 'Persa', '2020-11-05', 5);


INSERT INTO Atencion (id_mascota, id_veterinario, fecha_hora, diagnostico, costo_base) VALUES
(1, 1, '2026-09-01 09:30:00', 'Infeccion respiratoria', 450.00),
(2, 2, '2026-09-02 10:00:00', 'Dermatitis alergica', 500.00),
(3, 3, '2026-09-03 11:30:00', 'Lesion en pata trasera', 650.00),
(4, 4, '2026-09-04 12:00:00', 'Gastroenteritis', 400.00),
(5, 5, '2026-09-05 13:30:00', 'Problema cardiaco', 700.00);

INSERT INTO Prescripcion (id_atencion, codigo_medicamento, cantidad, indicaciones) VALUES
(1, 'MED001', 10, '1 tableta cada 8 horas por 5 dias'),
(2, 'MED004', 7, '1 tableta cada 24 horas por 7 dias'),
(3, 'MED002', 5, '1 tableta cada 24 horas por 5 dias'),
(4, 'MED003', 10, '1 tableta cada 12 horas por 5 dias'),
(5, 'MED005', 14, '1 tableta cada 12 horas por 7 dias');