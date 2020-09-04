--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7
-- Dumped by pg_dump version 12.2

-- Started on 2020-08-25 23:21:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- TOC entry 196 (class 1259 OID 32769)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    dni character(9) NOT NULL,
    nombre character varying(10),
    apellidos character varying(30),
    domicilio character(30),
    telefono character varying(9)
);



ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 32772)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    numreg integer NOT NULL,
    nombre character varying(32),
    incorporacion date,
    sueldo integer,
    cods integer
);



ALTER TABLE public.empleado OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 32775)
-- Name: factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factura (
    codigof integer NOT NULL,
    entrada date,
    salida date,
    dni character(9),
    numero integer NOT NULL,
    supletoria integer,
    forma character varying(8) NOT NULL,
    total real
);


ALTER TABLE public.factura OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 32778)
-- Name: factura_prov; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factura_prov (
    codfp integer NOT NULL,
    fecha date,
    importe integer,
    nif character varying(10) NOT NULL,
    numreg integer NOT NULL
);


ALTER TABLE public.factura_prov OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 32781)
-- Name: formapago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.formapago (
    forma character varying(8) NOT NULL,
    comision integer,
    CONSTRAINT formapago_forma_check CHECK (((forma)::text = ANY (ARRAY[('efectivo'::character varying)::text, ('tarjeta'::character varying)::text, ('talon'::character varying)::text])))
);

ALTER TABLE public.formapago OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 32785)
-- Name: habitacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.habitacion (
    numero integer NOT NULL,
    superficie integer,
    bar character(2),
    terraza character(2),
    puedesupletoria character(2),
    tipo character varying(10) NOT NULL,
    CONSTRAINT habitacion_bar_check CHECK ((bar = ANY (ARRAY['SI'::bpchar, 'NO'::bpchar]))),
    CONSTRAINT habitacion_puedesupletoria_check CHECK ((puedesupletoria = ANY (ARRAY['SI'::bpchar, 'NO'::bpchar]))),
    CONSTRAINT habitacion_terraza_check CHECK ((terraza = ANY (ARRAY['SI'::bpchar, 'NO'::bpchar])))
);


ALTER TABLE public.habitacion OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 32791)
-- Name: incluye; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.incluye (
    codigof integer NOT NULL,
    cods integer NOT NULL,
    coste integer,
    fecha date NOT NULL
);

ALTER TABLE public.incluye OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 32794)
-- Name: limpieza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.limpieza (
    numreg integer NOT NULL,
    numero integer NOT NULL,
    fecha date NOT NULL
);

ALTER TABLE public.limpieza OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 32797)
-- Name: precio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.precio (
    tipo character varying(10) NOT NULL,
    precio integer,
    CONSTRAINT precio_tipo_check CHECK (((tipo)::text = ANY (ARRAY[('individual'::character varying)::text, ('doble'::character varying)::text])))
);

ALTER TABLE public.precio OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 32801)
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor (
    nif character varying(10) NOT NULL,
    nombre character varying(16),
    direccion character(30),
    numreg integer NOT NULL
);

ALTER TABLE public.proveedor OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 32804)
-- Name: reserva; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva (
    dni character(9) NOT NULL,
    numero integer NOT NULL,
    entrada date,
    salida date
);

ALTER TABLE public.reserva OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 32807)
-- Name: servicio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicio (
    cods integer NOT NULL,
    descripcion character(15),
    costeinterno integer,
    numreg integer NOT NULL,
    CONSTRAINT servicio_descripcion_check CHECK ((descripcion = ANY (ARRAY['tintoreria'::bpchar, 'plancha'::bpchar, 'lavanderia'::bpchar, 'bar'::bpchar, 'restaurante'::bpchar, 'floristeria'::bpchar])))
);

ALTER TABLE public.servicio OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 32811)
-- Name: usa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usa (
    cods integer NOT NULL,
    servicio_cods integer NOT NULL,
    fecha date NOT NULL
);

ALTER TABLE public.usa OWNER TO postgres;

--
-- TOC entry 2738 (class 2606 OID 32815)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (dni);


--
-- TOC entry 2740 (class 2606 OID 32817)
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (numreg);


--
-- TOC entry 2742 (class 2606 OID 32819)
-- Name: factura factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (codigof);


--
-- TOC entry 2744 (class 2606 OID 32821)
-- Name: factura_prov factura_prov_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_prov
    ADD CONSTRAINT factura_prov_pkey PRIMARY KEY (codfp);


--
-- TOC entry 2746 (class 2606 OID 32823)
-- Name: formapago formapago_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formapago
    ADD CONSTRAINT formapago_pkey PRIMARY KEY (forma);


--
-- TOC entry 2748 (class 2606 OID 32825)
-- Name: habitacion habitacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.habitacion
    ADD CONSTRAINT habitacion_pkey PRIMARY KEY (numero);


--
-- TOC entry 2750 (class 2606 OID 32827)
-- Name: incluye incluye_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incluye
    ADD CONSTRAINT incluye_pkey PRIMARY KEY (codigof, cods, fecha);


--
-- TOC entry 2752 (class 2606 OID 32829)
-- Name: limpieza limpieza_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limpieza
    ADD CONSTRAINT limpieza_pkey PRIMARY KEY (numreg, numero, fecha);


--
-- TOC entry 2754 (class 2606 OID 32831)
-- Name: precio precio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precio
    ADD CONSTRAINT precio_pkey PRIMARY KEY (tipo);


--
-- TOC entry 2756 (class 2606 OID 32833)
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (nif);


--
-- TOC entry 2758 (class 2606 OID 32835)
-- Name: reserva reserva_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (dni, numero);


--
-- TOC entry 2760 (class 2606 OID 32837)
-- Name: servicio servicio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT servicio_pkey PRIMARY KEY (cods);


--
-- TOC entry 2762 (class 2606 OID 32839)
-- Name: usa usa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usa
    ADD CONSTRAINT usa_pkey PRIMARY KEY (cods, servicio_cods, fecha);


--
-- TOC entry 2763 (class 2606 OID 32840)
-- Name: empleado empleado_cods_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_cods_fkey FOREIGN KEY (cods) REFERENCES public.servicio(cods);


--
-- TOC entry 2764 (class 2606 OID 32845)
-- Name: factura factura_dni_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_dni_fkey FOREIGN KEY (dni) REFERENCES public.cliente(dni) ON UPDATE CASCADE;


--
-- TOC entry 2765 (class 2606 OID 32850)
-- Name: factura factura_forma_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_forma_fkey FOREIGN KEY (forma) REFERENCES public.formapago(forma) ON UPDATE CASCADE;


--
-- TOC entry 2766 (class 2606 OID 32855)
-- Name: factura factura_numero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_numero_fkey FOREIGN KEY (numero) REFERENCES public.habitacion(numero) ON UPDATE CASCADE;


--
-- TOC entry 2767 (class 2606 OID 32860)
-- Name: factura_prov factura_prov_nif_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_prov
    ADD CONSTRAINT factura_prov_nif_fkey FOREIGN KEY (nif) REFERENCES public.proveedor(nif) ON UPDATE CASCADE;


--
-- TOC entry 2768 (class 2606 OID 32865)
-- Name: factura_prov factura_prov_numreg_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_prov
    ADD CONSTRAINT factura_prov_numreg_fkey FOREIGN KEY (numreg) REFERENCES public.empleado(numreg);


--
-- TOC entry 2769 (class 2606 OID 32870)
-- Name: habitacion habitacion_tipo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.habitacion
    ADD CONSTRAINT habitacion_tipo_fkey FOREIGN KEY (tipo) REFERENCES public.precio(tipo) ON UPDATE CASCADE;


--
-- TOC entry 2770 (class 2606 OID 32875)
-- Name: incluye incluye_codigof_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incluye
    ADD CONSTRAINT incluye_codigof_fkey FOREIGN KEY (codigof) REFERENCES public.factura(codigof) ON UPDATE CASCADE;


--
-- TOC entry 2771 (class 2606 OID 32880)
-- Name: incluye incluye_cods_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incluye
    ADD CONSTRAINT incluye_cods_fkey FOREIGN KEY (cods) REFERENCES public.servicio(cods) ON UPDATE CASCADE;


--
-- TOC entry 2772 (class 2606 OID 32885)
-- Name: limpieza limpieza_numero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limpieza
    ADD CONSTRAINT limpieza_numero_fkey FOREIGN KEY (numero) REFERENCES public.habitacion(numero) ON UPDATE CASCADE;


--
-- TOC entry 2773 (class 2606 OID 32890)
-- Name: limpieza limpieza_numreg_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limpieza
    ADD CONSTRAINT limpieza_numreg_fkey FOREIGN KEY (numreg) REFERENCES public.empleado(numreg) ON UPDATE CASCADE;


--
-- TOC entry 2774 (class 2606 OID 32895)
-- Name: proveedor proveedor_numreg_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_numreg_fkey FOREIGN KEY (numreg) REFERENCES public.empleado(numreg) ON UPDATE CASCADE;


--
-- TOC entry 2775 (class 2606 OID 32900)
-- Name: reserva reserva_dni_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_dni_fkey FOREIGN KEY (dni) REFERENCES public.cliente(dni) ON UPDATE CASCADE;


--
-- TOC entry 2776 (class 2606 OID 32905)
-- Name: reserva reserva_numero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_numero_fkey FOREIGN KEY (numero) REFERENCES public.habitacion(numero) ON UPDATE CASCADE;


--
-- TOC entry 2777 (class 2606 OID 32910)
-- Name: servicio servicio_numreg_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT servicio_numreg_fkey FOREIGN KEY (numreg) REFERENCES public.empleado(numreg) ON UPDATE CASCADE;


--
-- TOC entry 2778 (class 2606 OID 32915)
-- Name: usa usa_cods_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usa
    ADD CONSTRAINT usa_cods_fkey FOREIGN KEY (cods) REFERENCES public.servicio(cods);


--
-- TOC entry 2779 (class 2606 OID 32920)
-- Name: usa usa_servicio_cods_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usa
    ADD CONSTRAINT usa_servicio_cods_fkey FOREIGN KEY (servicio_cods) REFERENCES public.servicio(cods);


-- Completed on 2020-08-25 23:21:52

--
-- PostgreSQL database dump complete
--

