--1) Obtener un listado de los empleados del hotel, con todos sus datos.
/*SELECT	* 
FROM 	public.empleado 
ORDER 	BY numreg ASC*/

--2) Obtener el nombre del jefe del servicio de "Restaurante".
/*select	nombre 
from 	public.empleado 
join 	servicio on servicio.numreg = empleado.numreg 
		and descripcion = 'restaurante'*/

--3) Obtener el nombre del jefe de "Jorge Alonso Alonso".
/*with	t1 as(
	select	descripcion 
	from 	empleado 
	join	servicio as s1 on s1.cods = empleado.cods and nombre = 'Jorge Alonso Alonso'
)
select	nombre 
from	public.empleado 
join 	servicio on servicio.numreg = empleado.numreg
		and sueldo is not null
join	t1 on t1.descripcion = servicio.descripcion*/

--4) Obtener un listado de los empleados y los servicios a los que están asignados, exclusivamente para aquellos que tengan algún servicio asignado.
/*select	empleado.*, descripcion 
from	public.empleado
join 	servicio on servicio.cods = empleado.cods*/

--5) Obtener el número de habitación, tipo y precio de las habitaciones que estén ocupadas en la actualidad (no tienen fecha de salida).
/*SELECT	habitacion.numero, habitacion.tipo, precio
FROM 	habitacion
join	factura on factura.numero = habitacion.numero
join	precio on precio.tipo = habitacion.tipo
where	salida is null*/

--6) Obtener el nombre y apellidos del cliente o clientes que más veces hayan estado en el hotel (no número total de noches, 
--sino estancias diferentes: una persona que ha estado tres veces diferentes de una noche en el hotel habrá "estado" más veces que otra persona que ha estado una vez durante tres noches)
/*with ms as(
	select	max(cc) as cc from(
		select	count(*) as cc
		from	cliente
		join	factura on factura.dni = cliente.dni
		group	by nombre, apellidos
		order	by count(*) desc
	) as t1
)
select	nombre, apellidos
from	cliente
join	factura on factura.dni = cliente.dni
group	by nombre, apellidos
having	count(*) = (select cc from ms)
order	by count(*) desc
*/

--7) Obtener los datos del empleado o empleados que hayan limpiado todas las habitaciones del hotel
/*select	t1.numreg, t1.nombre, t1.incorporacion, t1.sueldo, t1.cods, count(*)
from(
	select	distinct empleado.*, habitacion.numero
	from	empleado
	join	limpieza on empleado.numreg = limpieza.numreg
	join	habitacion	on habitacion.numero = limpieza.numero
	group	by empleado.numreg, habitacion.numero
	order	by nombre
) as 	t1
group	by t1.numreg, t1.nombre, t1.incorporacion, t1.sueldo, t1.cods
having	count(*) = (select count(*) as cc from habitacion)*/

--8) Obtener el listado de los clientes que ocupen o hayan ocupado alguna vez habitaciones de los dos tipos (individual y doble)
/*select	dni, nombre, apellidos, domicilio, telefono
from	(
	SELECT	cliente.*, tipo, count(*)
	FROM 	habitacion
	join	factura on factura.numero = habitacion.numero
	join	cliente on factura.dni = cliente.dni
	group	by cliente.dni, tipo
	order	by nombre
) 	as t1
group	by dni, nombre, apellidos, domicilio, telefono
having	count(*) = 2*/

--9) Obtener un listado de los proveedores cuyas facturas hayan sido aprobadas únicamente por el encargado y no por el responsable de un servicio.
/*select	factura_prov.*
from	proveedor
join	factura_prov on	factura_prov.nif = proveedor.nif
left	join servicio on factura_prov.numreg = servicio.numreg
where	servicio.cods is null*/

--10) Igualar el sueldo del empleado que menos cobra dentro del servicio de "restaurante" con el del empleado que más cobra del mismo servicio
--revisar porque los otros tienen datos null
/*with mmm as(
	select	min(sueldo) as mi, max(sueldo) as ma, s1.cods
	from 	empleado 
	join	servicio as s1 on s1.cods = empleado.cods and descripcion = 'restaurante'
	group	by s1.cods
)
update	 empleado emp1
set		sueldo = mmm.ma
from	mmm
where	emp1.sueldo = mmm.mi
		and emp1.cods = mmm.cods*/

--11) Incrementar en un 10% el sueldo del empleado de "limpieza" que más habitaciones haya limpiado.
/*
with cleaner as (
	select	empleado.numreg, count(*) 
	from 	public.empleado 
	join 	limpieza on limpieza.numreg = empleado.numreg
	group	by empleado.numreg
	order	by count(*) desc
	limit	1
)
update 	empleado
set		sueldo = sueldo + (sueldo * 0.10)
from	cleaner
where	cleaner.numreg = empleado.numreg
*/
