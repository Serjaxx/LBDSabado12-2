use master

create table tabla(
	NumeroCliente int not null,
	Nombre varchar(35) not null,
	PrimerApellido varchar(30) not null,
	SegundoApellido varchar(30) null,
	Edad int null,
	NombreCompleto as (Nombre + ' ' + PrimerApellido + ' ' + SegundoApellido),

	constraint pk_NumeroCliente primary key(NumeroCliente)
)

create table tabla2(
	Ubicacion varchar(50) not null,
	Destino varchar(50) not null,

	constraint pk_Viaje primary key(Ubicacion)
)

create table tabla3(
	Ida date not null,
	Vuelta date not null,
	DiasViaje int not null,
	Tiempo as (dateadd(day, DiasViaje, Ida))

	constraint pk_Ida primary key(Ida)
)

create table tabla4(
	Terminal_id int not null,
	Terminal_nom varchar(30) not null,

	constraint pk_Terminal primary key(Terminal_id)
)

create table tabla5(
	vendedor_id int not null,
	v_nom varchar(50) not null,
	v_telefono tinyint not null,
	v_FechaRegistro date null,

	constraint pk_Vendedor primary key(vendedor_id)
)

alter table tabla5 add constraint dfl_tabla5_FechaRegistro default getdate() for v_FechaRegistro

alter table tabla add constraint uq_tabla_NumeroCliente unique (NumeroCliente)

alter table tabla5 add constraint uq_tabla5_vendedorid unique (vendedor_id)

alter table tabla4 add constraint uq_tabla4_terminalid unique (Terminal_id)

alter table tabla add constraint ch_tabla_edad check (Edad > 18)