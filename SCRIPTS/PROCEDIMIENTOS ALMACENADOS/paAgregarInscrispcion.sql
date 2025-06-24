create procedure paAgregarInscripcion
    @idSocio int,
    @idClase int,
    @fechaInscripcion date
as
begin
insert into Inscripcion(idSocio,idClase,fechaInscripcion)
values(@idSocio,@idClase,@fechaInscripcion); 
end;