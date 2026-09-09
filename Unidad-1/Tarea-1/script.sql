)
VALUES
    (1, 'Ana Gómez', 'ana@email.com'),
    (2, 'Carlos Ruíz', 'carlos@email.com');

INSERT INTO libros (
    id_libro,
    titulo_libro,
    autor_libro
)
VALUES
    (1, 'El Principito', 'Antoine de Saint-Exupéry'),
    (2, 'Cien Años de Soledad', 'Gabriel García Márquez');

INSERT INTO prestamos (
    id_prestamo,
    id_usuario,
    id_libro,
    fecha_prestamo
)
VALUES
    (5001, 1, 1, '2026-03-01'),
    (5002, 2, 2, '2026-03-02'),
    (5003, 1, 2, '2026-03-05');

SELECT * FROM usuarios;

SELECT * FROM libros;

SELECT * FROM prestamos;

SELECT
    p.id_prestamo,
    u.nombre_usuario,
    u.email_usuario,
    l.titulo_libro,
    l.autor_libro,
    p.fecha_prestamo
FROM prestamos AS p
INNER JOIN usuarios AS u
    ON p.id_usuario = u.id_usuario
INNER JOIN libros AS l
    ON p.id_libro = l.id_libro;
