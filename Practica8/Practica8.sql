use Proyecto

create view Pasajero 
as
select pasajeros.pasajero_nombre, pasajeros.pasajeros_id from pasajeros

create view Vendedor
as
select vendedores.vendedor_nombre, vendedores.vendedor_id from vendedores

create view Conductores_Identificacion
as
select conductores.conductor_nombre, conductores.conductor_id,conductores.conductor_clave_licencia from conductores

create view Corrida_Identificacion
as
select corridas.terminal_origen, corridas.terminal_destino from corridas

create view Asiento
as
select asientos.asientos_id, asientos.asientos_numero from asientos

with vendedores as
(select count(vendedor_id) as VV
from vendedores group by vendedor_id)
select * from vendedores
where vendedores.VV = 1

select asientos_id from asientos where asientos_estado = 'disponible'

select vendedor_id, pasajeros_id from vendedores inner join pasajeros on vendedores.vendedor_id=pasajeros.pasajeros_id
where exists (select pasajeros_id from pasajeros where pasajeros_id>1)

