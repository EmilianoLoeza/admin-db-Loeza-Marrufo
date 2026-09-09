USE `Loeza-Marrufo`;

ALTER TABLE Mascota
ADD CONSTRAINT fk_mascota_cliente
FOREIGN KEY (id_cliente)
REFERENCES Cliente(id_cliente);

ALTER TABLE Atencion
ADD CONSTRAINT fk_atencion_mascota
FOREIGN KEY (id_mascota)
REFERENCES Mascota(id_mascota);

ALTER TABLE Atencion
ADD CONSTRAINT fk_atencion_veterinario
FOREIGN KEY (id_veterinario)
REFERENCES Veterinario(id_veterinario);

ALTER TABLE Prescripcion
ADD CONSTRAINT fk_prescripcion_atencion
FOREIGN KEY (id_atencion)
REFERENCES Atencion(id_atencion);

ALTER TABLE Prescripcion
ADD CONSTRAINT fk_prescripcion_medicamento
FOREIGN KEY (codigo_medicamento)
REFERENCES Medicamento(codigo_medicamento);