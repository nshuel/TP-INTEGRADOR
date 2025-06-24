create trigger trDesactivarSocio
on Socios
instead of delete 
as 
begin 
    update Socios
    set estado = 'Inactivo'
    where idSocio in (select idSocio from deleted);
end;