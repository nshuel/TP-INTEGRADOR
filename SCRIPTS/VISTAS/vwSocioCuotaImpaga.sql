create view vwSocioCuotaImpaga as
select s.idSocio, s.nombre, s.apellido, c.idCuota, c.monto, c.estado
from Socios s
inner join Cuota c on s.idSocio = c.idSocio
where c.estado = 'Pendiente';

