create view vwClaseconCantInscrip as 
select c.idClase, c.nombre, c.dia, c.horario, c.idEntrenador,
count(i.idSocio) as CantidadInscriptos
from Clases c
inner join Inscripcion i on i.idClase= c.idClase
group by c.idClase, c.nombre, c.dia, c.horario, c.idEntrenador;