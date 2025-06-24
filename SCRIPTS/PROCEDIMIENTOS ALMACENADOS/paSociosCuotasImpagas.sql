create procedure paSociosCuotasImpagas
as 
begin 
select s.idSocio,s.nombre,s.apellido,s.telefono,s.mail,s.fechaNacimiento,s.estado,c.estado
from Socios s 
inner join Cuota c on s.idSocio = c.idSocio
where c.estado='Impaga';
end;