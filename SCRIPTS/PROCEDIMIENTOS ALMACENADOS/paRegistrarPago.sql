create procedure paRegistrarPago
    @idSocio int,
    @monto money,
    @fechaPago date,
    @fechaVencimiento date,
    @estado varchar(20)
as 
begin 
insert into Cuota(idSocio,monto,fechaPago,fechaVencimiento,estado)
values (@idSocio,@monto,@fechaPago,@fechaVencimiento,@estado)
end;