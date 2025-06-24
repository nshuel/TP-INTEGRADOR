insert into Socios(nombre, apellido, telefono, mail, fechaNacimiento)
values 
('Nahuel', 'Meza', '1132497146', 'nahuelrm204@gmail.com', '2004-11-24'),
('Sebastian', 'Ramirez', '1132497148', 'sebastianrm@gmail.com', '2002-08-25'),
('Juan', 'Perez', '1132497155', 'juanperez@gmail.com', '1995-10-20'),
('Maria', 'Lopez', '1139497146', 'lopezmaria@gmail.com', '2000-05-24'),
('Lucas', 'Fernandez', '1132497156', 'lucasfernandez@gmail.com', '1998-03-15'),
('Sofia', 'Gonzalez', '1132497157', 'sofiagonzalez@gmail.com', '1996-12-30');

insert into Entrenador(nombre, apellido)
values 
('Romina', 'Meza'),
('Nadin', 'Ramirez'),
('Pablo', 'Sanchez'),
('Laura', 'Torres');

insert into Clases(nombre, dia, horario, idEntrenador)
values 
('Spinning', 'Lunes', '08:00', 1),
('Crossfit', 'Martes', '09:00', 2),
('Yoga', 'Miércoles', '10:00', 3),
('Zumba', 'Jueves', '11:00', 4);

insert into Inscripcion(idSocio, idClase, fechaInscripcion)
values 
(1, 1, '2025-06-22'),
(2, 2, '2025-06-23'),
(3, 1, '2025-06-24'),
(4, 2, '2025-06-25'),
(5, 3, '2025-06-26'),
(6, 4, '2025-06-27');

insert into Cuota(idSocio, monto, fechaPago, fechaVencimiento, estado)
values 
(1, 30000, '2025-06-15', '2025-07-15', 'Pendiente'),
(2, 7000, '2025-06-17', '2025-07-17', 'Pagada'),
(3, 30000, '2025-06-14', '2025-07-14', 'Pendiente'),
(4, 5000, '2025-06-25', '2025-07-25', 'Pagada'),
(5, 15000, '2025-06-20', '2025-07-20', 'Pendiente'),
(6, 8000, '2025-06-28', '2025-07-28', 'Pagada');