create view vwClaseCadaSocio as 
select s.idSocio as idDelSocio, s.nombre as Nombre, s.apellido as Apellido, c.nombre as NombreClase, c.dia as Dia, c.horario as Horario, e.nombre as NombreProfesor, e.apellido as ApellidoProfesor
from Socios s
inner join Inscripcion i on s.idSocio=i.idSocio
inner join Clases c on c.idClase=i.idClase
inner join Entrenador e on e.idEntrenador=c.idEntrenador;