use Proyecto

SELECT * from pasajeros where pasajeros.pasajero_nombre like '%%' order by pasajeros_id
SELECT * from autobuses where autobuses.autobuses_capacidad like 32 order by autobuses_capacidad
SELECT * from autobuses where autobuses.autobuses_placa like '%%' order by autobuses_placa
SELECT * from autobuses where autobuses.autobuses_tipo like 2 order by autobuses_tipo

SELECT * from conductores right join vendedores on conductores.conductor_id = vendedores.vendedor_id
SELECT * from conductores left join vendedores on conductores.conductor_nombre = vendedores.vendedor_nombre
SELECT * from asientos inner join autobuses on asientos.asientos_estado = autobuses.autobuses_estado

SELECT COUNT (vendedor_id) as 'Vendedores activos' from vendedores  
SELECT COUNT (autobuses_id) as 'Cantidad Autobuses' from autobuses
SELECT COUNT (conductor_id) as 'Numero de Conductores' from conductores
SELECT MIN(autobuses_capacidad) as 'Numero de asientos default' from autobuses
SELECT MAX(autobuses_capacidad) as 'Numero de asientos a ocupar' from autobuses

