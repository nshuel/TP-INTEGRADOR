create table Socios(
    idSocio int not null primary key identity(1,1),
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    telefono varchar(20) not null unique,
    mail varchar(100) not null unique,
    fechaNacimiento date not null,
    estado varchar(20)
);
alter table Socios
add constraint unqSocios unique(telefono,mail);

create table Entrenador(
    idEntrenador int not null primary key identity(1,1),
    nombre varchar(50) not null,
    apellido varchar(50) not null
);
alter table Entrenador
add constraint unqEntrenador unique(nombre,apellido);

create table Clases(
    idClase int not null primary key identity(1,1),
    idEntrenador int not null,
    nombre varchar(50) not null,
    dia varchar(15),
    horario time not null, 
    foreign key (idEntrenador) references Entrenador(idEntrenador)
);
alter table Clases
add constraint unqClases unique(nombre,idEntrenador);

create table Inscripcion(
    idInscripcion int not null primary key identity(1,1),
    idSocio int not null,
    idClase int not null,
    fechaInscripcion date not null,
    foreign key(idSocio) references Socios(idSocio),
    foreign key(idClase) references Clases(idClase) 
);
alter table Inscripcion
add constraint unqInscripcion unique(idSocio,idClase);

create table Cuota(
    idCuota int not null primary key identity(1,1),
    idSocio int not null,
    monto money not null,
    fechaPago date not null,
    fechaVencimiento date not null,
    estado varchar(20),
    foreign key (idSocio) references Socios(idSocio)
);
alter table Cuota
add constraint unqcuota unique (idSocio,fechaPago);

create table RegistrosSocios(
    idRegistro int not null primary key IDENTITY(1,1),
    nombre  varchar(50),
    apellido varchar(50),
    telefono varchar(20),
    mail varchar(100),
    fechaNacimiento date,
    estado varchar(20)
);
alter table RegistrosSocios
add constraint unqReg unique (telefono,mail);