create procedure paAgregarSocio
    @nombre varchar(50),
    @apellido varchar(50),
    @telefono varchar(20),
    @mail varchar(50),
    @fechaNacimiento date
as 
begin
    insert into Socios(nombre, apellido, telefono, mail, fechaNacimiento)
    values(@nombre, @apellido, @telefono, @mail, @fechaNacimiento);
end;
