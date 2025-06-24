create trigger trAgregarSocio on Socios
after insert
as
begin
	insert into RegistrosSocios(nombre,apellido,telefono,mail,fechaNacimiento,estado)
	select nombre,apellido,telefono,mail,fechaNacimiento,estado
	from inserted;
end;
