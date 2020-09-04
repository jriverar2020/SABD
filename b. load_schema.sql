/******** TRANSFORMACION CORRESPONDIENTES A EMPLEADO ********/
--1
CREATE TABLE public.empleado (
    numreg integer NOT NULL,
    nombre character varying(32),
    incorporacion date NOT NULL DEFAULT now(),
    sueldo integer,
    cods integer
);
--2
SELECT create_hypertable('empleado', 'incorporacion');

/******** TRANSFORMACION CORRESPONDIENTES A SERVICIO ********/
--3
CREATE TABLE public.servicio
(
    fecreg date NOT NULL DEFAULT now(),
    cods integer NOT NULL,
    descripcion character(15) COLLATE pg_catalog."default",
    costeinterno integer,
    numreg integer NOT NULL,
    CONSTRAINT servicio_descripcion_check CHECK (descripcion = ANY (ARRAY['tintoreria'::bpchar, 'plancha'::bpchar, 'lavanderia'::bpchar, 'bar'::bpchar, 'restaurante'::bpchar, 'floristeria'::bpchar]))
)
--4
SELECT create_hypertable('servicio','fecreg');

/******** TRANSFORMACION CORRESPONDIENTES A HABITACION ********/
--5
CREATE TABLE public.habitacion
(
    fecreg date NOT NULL DEFAULT now(),
    numero integer NOT NULL,
    superficie integer,
    bar character(2) COLLATE pg_catalog."default",
    terraza character(2) COLLATE pg_catalog."default",
    puedesupletoria character(2) COLLATE pg_catalog."default",
    tipo character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT habitacion_bar_check CHECK (bar = ANY (ARRAY['SI'::bpchar, 'NO'::bpchar])),
    CONSTRAINT habitacion_puedesupletoria_check CHECK (puedesupletoria = ANY (ARRAY['SI'::bpchar, 'NO'::bpchar])),
    CONSTRAINT habitacion_terraza_check CHECK (terraza = ANY (ARRAY['SI'::bpchar, 'NO'::bpchar]))
)
--6
SELECT create_hypertable('habitacion','fecreg');

/******** TRANSFORMACION CORRESPONDIENTES A FACTURA ********/
--7
CREATE TABLE public.factura (
	fecreg date NOT NULL DEFAULT now(),
    codigof integer NOT NULL,
    entrada date,
    salida date,
    dni character(9),
    numero integer NOT NULL,
    supletoria integer,
    forma character varying(8) NOT NULL,
    total real
);
--8
SELECT create_hypertable('factura','fecreg');

/******** TRANSFORMACION CORRESPONDIENTES A PRECIO ********/
--9
CREATE TABLE public.precio (
	fecreg date NOT NULL DEFAULT now(),
    tipo character varying(10) NOT NULL,
    precio integer,
    CONSTRAINT precio_tipo_check CHECK (((tipo)::text = ANY (ARRAY[('individual'::character varying)::text, ('doble'::character varying)::text])))
);
--10
SELECT create_hypertable('precio','fecreg');

/******** TRANSFORMACION CORRESPONDIENTES A CLIENTE ********/
--11
CREATE TABLE public.cliente (
	fecreg date NOT NULL DEFAULT now(),
    dni character(9) NOT NULL,
    nombre character varying(10),
    apellidos character varying(30),
    domicilio character(30),
    telefono character varying(9)
);
--12
SELECT create_hypertable('cliente','fecreg');

/******** TRANSFORMACION CORRESPONDIENTES A PROVEEDOR ********/
--13
CREATE TABLE public.proveedor (
	fecreg date NOT NULL DEFAULT now(),
    nif character varying(10) NOT NULL,
    nombre character varying(16),
    direccion character(30),
    numreg integer NOT NULL
);
--14
SELECT create_hypertable('proveedor','fecreg');

/******** TRANSFORMACION CORRESPONDIENTES A FACTURA PROVEEDOR ********/
--15
CREATE TABLE public.factura_prov (
	fecreg date NOT NULL DEFAULT now(),
    codfp integer NOT NULL,
    fecha date,
    importe integer,
    nif character varying(10) NOT NULL,
    numreg integer NOT NULL
);
--16
SELECT create_hypertable('factura_prov','fecreg');

/******** TRANSFORMACION CORRESPONDIENTES A FORMA DE PAGO ********/
--17
CREATE TABLE public.formapago (
	fecreg date NOT NULL DEFAULT now(),
    forma character varying(8) NOT NULL,
    comision integer,
    CONSTRAINT formapago_forma_check CHECK (((forma)::text = ANY (ARRAY[('efectivo'::character varying)::text, ('tarjeta'::character varying)::text, ('talon'::character varying)::text])))
);
--18
SELECT create_hypertable('formapago','fecreg');

/******** TRANSFORMACION CORRESPONDIENTES A SERVICIOS QUE INCLUYE ********/
--19
CREATE TABLE public.incluye (
	fecreg date NOT NULL DEFAULT now(),
    codigof integer NOT NULL,
    cods integer NOT NULL,
    coste integer,
    fecha date NOT NULL
);
--20
SELECT create_hypertable('incluye','fecreg');

/******** TRANSFORMACION CORRESPONDIENTES A LIMPIEZA QUE SE REALIZO ********/
--21
CREATE TABLE public.limpieza (
	fecreg date NOT NULL DEFAULT now(),
    numreg integer NOT NULL,
    numero integer NOT NULL,
    fecha date NOT NULL
);
--22
SELECT create_hypertable('limpieza','fecreg');

/******** TRANSFORMACION CORRESPONDIENTES A USA SERVICIOS ********/
--23
CREATE TABLE public.usa (
	fecreg date NOT NULL DEFAULT now(),
    cods integer NOT NULL,
    servicio_cods integer NOT NULL,
    fecha date NOT NULL
);
--24
SELECT create_hypertable('usa','fecreg');

/******** TRANSFORMACION CORRESPONDIENTES A USA SERVICIOS ********/
--25
CREATE TABLE public.reserva (
	fecreg date NOT NULL DEFAULT now(),
    dni character(9) NOT NULL,
    numero integer NOT NULL,
    entrada date,
    salida date
);
--26
SELECT create_hypertable('reserva','fecreg');