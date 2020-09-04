
/******** AGREGAR DATOS CORRESPONDIENTES A EMPLEADO ********/

INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (10,'Antonio Sancho Sancho','2010-01-01',1000,NULL);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (11,'María Gonzalo Fuentes','2010-01-01',1000,NULL);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (12,'Juana Peláez Trasto','2010-01-01',900,NULL);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (13,'Gonzalo Cabezas Muiño','2010-01-01',1500,NULL);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (1,'Luisa Blanco Baroja','1996-10-23',1000,1);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (2,'Fernando Serrano Vázquez','1996-10-23',1000,2);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (3,'Manuel Pérez Calo','2000-01-01',900,3);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (4,'Ana Troncoso Calvo','2000-01-01',900,4);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (5,'Alba Troncoso Calvo','2002-09-13',NULL,1);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (6,'Jorge Alonso Alonso','2002-09-13',NULL,5);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (7,'Fernando Soaje Alvarez','2010-01-01',NULL,5);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (8,'Rosa Luigi Paz','2010-01-01',1000,5);
INSERT INTO public.empleado(numreg, nombre, incorporacion, sueldo, cods) VALUES (9,'Rafael Fuertes Cabrera','2010-01-01',1100,6);

/******** AGREGAR DATOS CORRESPONDIENTES A SERVICIO ********/

INSERT INTO public.servicio(cods, descripcion, costeinterno, numreg)VALUES (1,'tintoreria',50,1);
INSERT INTO public.servicio(cods, descripcion, costeinterno, numreg)VALUES (2,'plancha',30,2);
INSERT INTO public.servicio(cods, descripcion, costeinterno, numreg)VALUES (3,'lavanderia',60,3);
INSERT INTO public.servicio(cods, descripcion, costeinterno, numreg)VALUES (4,'bar',15,4);
INSERT INTO public.servicio(cods, descripcion, costeinterno, numreg)VALUES (5,'restaurante',50,8);
INSERT INTO public.servicio(cods, descripcion, costeinterno, numreg)VALUES (6,'floristeria',25,9);

/******** AGREGAR DATOS CORRESPONDIENTES A HABITACION ********/

INSERT INTO public.habitacion(numero, superficie, bar, terraza, puedesupletoria, tipo)VALUES (100,17,'SI','SI','SI','doble');
INSERT INTO public.habitacion(numero, superficie, bar, terraza, puedesupletoria, tipo)VALUES (101,17,'SI','SI','SI','doble');
INSERT INTO public.habitacion(numero, superficie, bar, terraza, puedesupletoria, tipo)VALUES (102,17,'SI','SI','SI','individual');
INSERT INTO public.habitacion(numero, superficie, bar, terraza, puedesupletoria, tipo)VALUES (200,17,'SI','SI','SI','doble');
INSERT INTO public.habitacion(numero, superficie, bar, terraza, puedesupletoria, tipo)VALUES (201,17,'SI','SI','NO','doble');
INSERT INTO public.habitacion(numero, superficie, bar, terraza, puedesupletoria, tipo)VALUES (202,15,'SI','SI','NO','individual');
INSERT INTO public.habitacion(numero, superficie, bar, terraza, puedesupletoria, tipo)VALUES (203,15,'NO','SI','SI','individual');
INSERT INTO public.habitacion(numero, superficie, bar, terraza, puedesupletoria, tipo)VALUES (204,17,'SI','SI','SI','doble');
INSERT INTO public.habitacion(numero, superficie, bar, terraza, puedesupletoria, tipo)VALUES (300,17,'NO','SI','SI','doble');
INSERT INTO public.habitacion(numero, superficie, bar, terraza, puedesupletoria, tipo)VALUES (301,17,'SI','SI','SI','doble');

/******** AGREGAR DATOS CORRESPONDIENTES A FACTURA ********/

INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (1,'2010-01-01','2010-01-03','111111   ',100,30,'efectivo','360');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (0,'2010-01-01','2010-01-05','999999   ',300,0,'tarjeta','220');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (2,'2010-06-01','2010-06-03','111111   ',100,30,'efectivo','180');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (3,'2010-09-01','2010-09-03','111111   ',100,30,'efectivo','338');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (4,'2010-11-02',NULL,'111111   ',100,0,'efectivo',NULL);
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (5,'2010-11-01',NULL,'333333   ',200,0,'tarjeta',NULL);
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (6,'2010-10-29',NULL,'999999   ',204,30,'talon',NULL);
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (7,'2010-11-01',NULL,'555555   ',300,0,'efectivo',NULL);
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (8,'2010-10-30',NULL,'777777   ',301,30,'tarjeta',NULL);
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (9,'2010-05-15','2010-05-17','999999   ',301,0,'tarjeta','218');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (10,'2010-08-10','2010-08-13','333333   ',300,0,'tarjeta','270');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (11,'2010-08-15','2010-08-22','888888   ',102,0,'tarjeta','525');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (12,'2010-12-23','2010-12-24','444444   ',201,0,'talon','90');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (13,'2010-05-01','2010-05-05','999999   ',300,0,'efectivo','380');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (14,'2010-06-06','2010-06-11','555555   ',203,0,'tarjeta','375');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (15,'2010-08-15','2010-08-19','555555   ',203,0,'tarjeta','363');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (16,'2010-08-19','2010-08-21','666666   ',204,0,'efectivo','212');
INSERT INTO public.factura(	codigof, entrada, salida, dni, numero, supletoria, forma, total)VALUES (17,'2010-08-22','2010-08-24','666666   ',203,0,'tarjeta','190');

/******** AGREGAR DATOS CORRESPONDIENTES A PRECIO ********/

INSERT INTO public.precio(tipo, precio)VALUES ('individual',75);
INSERT INTO public.precio(tipo, precio)VALUES ('doble',90);

/******** AGREGAR DATOS CORRESPONDIENTES A CLIENTE ********/

INSERT INTO public.cliente(dni, nombre, apellidos, domicilio, telefono)	VALUES ('111111   ','Antonio','Aguirre','Pez 20, 1º A                  ','999418768');
INSERT INTO public.cliente(dni, nombre, apellidos, domicilio, telefono)	VALUES ('222222   ','Jorge','Anguiano López','Churruca 2, 6º D              ','999876737');
INSERT INTO public.cliente(dni, nombre, apellidos, domicilio, telefono)	VALUES ('333333   ','Pilar','Méndez Alonso','Gran Via 167                  ','999343543');
INSERT INTO public.cliente(dni, nombre, apellidos, domicilio, telefono)	VALUES ('444444   ','Azucena','Rubio del Val','Brasil 63, 2º A               ','999456765');
INSERT INTO public.cliente(dni, nombre, apellidos, domicilio, telefono)	VALUES ('555555   ','Raúl','Gutiérrez González','Literatos 3, 5º               ','999876234');
INSERT INTO public.cliente(dni, nombre, apellidos, domicilio, telefono)	VALUES ('666666   ','Santiago','Rivera Romero','Avda. de la Paz 30            ','999111232');
INSERT INTO public.cliente(dni, nombre, apellidos, domicilio, telefono)	VALUES ('777777   ','Pedro','González Hernando','Castellana 290, 9º B          ','999232221');
INSERT INTO public.cliente(dni, nombre, apellidos, domicilio, telefono)	VALUES ('888888   ','Antonio','Díaz Martín','Cuba 1                        ','999444554');
INSERT INTO public.cliente(dni, nombre, apellidos, domicilio, telefono)	VALUES ('999999   ','Virginia','Fernández Fernández','Brasil 65, 3º                 ','999009009');
INSERT INTO public.cliente(dni, nombre, apellidos, domicilio, telefono)	VALUES ('000000   ','Francisco','Vilansó Rodríguez','General Rodrigos 24           ','999666565');

/******** AGREGAR DATOS CORRESPONDIENTES A PROVEEDOR ********/

INSERT INTO public.proveedor(	nif, nombre, direccion, numreg)	VALUES ('121212T','Carnes SA','Plaza de los de Acá 20        ',8);
INSERT INTO public.proveedor(	nif, nombre, direccion, numreg)	VALUES ('343434L','Logística Pérez','Calle del Pueblo 30, 1º       ',1);
INSERT INTO public.proveedor(	nif, nombre, direccion, numreg)	VALUES ('545454Q','Prd. Quimicos SA','Colombiana 34                 ',12);

/******** AGREGAR DATOS CORRESPONDIENTES A FACTURA PROVEEDOR ********/

INSERT INTO public.factura_prov(codfp, fecha, importe, nif, numreg)	VALUES (1,'2010-03-21',1500,'121212T',8);
INSERT INTO public.factura_prov(codfp, fecha, importe, nif, numreg)	VALUES (2,'2010-04-21',1000,'121212T',8);
INSERT INTO public.factura_prov(codfp, fecha, importe, nif, numreg)	VALUES (3,'2010-05-21',500,'121212T',8);
INSERT INTO public.factura_prov(codfp, fecha, importe, nif, numreg)	VALUES (4,'2010-06-21',976,'121212T',8);
INSERT INTO public.factura_prov(codfp, fecha, importe, nif, numreg)	VALUES (5,'2010-03-21',345,'343434L',1);
INSERT INTO public.factura_prov(codfp, fecha, importe, nif, numreg)	VALUES (6,'2010-05-21',235,'343434L',1);
INSERT INTO public.factura_prov(codfp, fecha, importe, nif, numreg)	VALUES (7,'2010-07-21',1000,'343434L',1);
INSERT INTO public.factura_prov(codfp, fecha, importe, nif, numreg)	VALUES (8,'2010-08-21',765,'343434L',1);
INSERT INTO public.factura_prov(codfp, fecha, importe, nif, numreg)	VALUES (9,'2010-03-21',1235,'545454Q',12);
INSERT INTO public.factura_prov(codfp, fecha, importe, nif, numreg)	VALUES (10,'2010-04-11',2342,'545454Q',12);
INSERT INTO public.factura_prov(codfp, fecha, importe, nif, numreg)	VALUES (11,'2010-06-15',2567,'545454Q',12);

/******** AGREGAR DATOS CORRESPONDIENTES A FORMA DE PAGO ********/

INSERT INTO public.formapago(forma, comision)VALUES ('efectivo',0);
INSERT INTO public.formapago(forma, comision)VALUES ('tarjeta',1);
INSERT INTO public.formapago(forma, comision)VALUES ('talon',2);

/******** AGREGAR DATOS CORRESPONDIENTES A SERVICIOS QUE INCLUYE ********/

INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (1,1,25,'2010-01-01');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (1,2,15,'2010-01-01');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (3,3,25,'2010-09-01');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (3,3,25,'2010-09-02');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (3,3,25,'2010-09-03');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (3,2,10,'2010-09-01');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (3,2,20,'2010-09-03');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (3,1,10,'2010-09-01');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (3,5,43,'2010-09-02');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (5,5,25,'2010-11-01');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (5,5,28,'2010-11-02');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (5,5,33,'2010-11-03');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (5,5,24,'2010-11-04');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (5,3,13,'2010-11-02');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (7,6,20,'2010-11-02');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (9,4,6,'2010-05-15');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (9,4,8,'2010-05-16');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (9,5,24,'2010-05-16');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (13,2,10,'2010-05-03');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (13,2,10,'2010-05-04');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (15,5,45,'2010-08-15');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (15,4,5,'2010-08-15');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (15,2,13,'2010-08-15');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (16,5,32,'2010-08-19');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (17,1,10,'2010-08-20');
INSERT INTO public.incluye(codigof, cods, coste, fecha)	VALUES (17,5,30,'2010-08-23');

/******** AGREGAR DATOS CORRESPONDIENTES A LIMPIEZA QUE SE REALIZO ********/

INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (10,101,'2010-08-20');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (10,101,'2010-08-21');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (10,101,'2010-08-22');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (10,101,'2010-08-23');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (10,102,'2010-08-24');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (10,202,'2010-09-23');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (10,203,'2010-09-23');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (10,204,'2010-09-30');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (10,301,'2010-10-01');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (10,300,'2010-10-01');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (12,100,'2010-09-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (12,101,'2010-09-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (12,102,'2010-09-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (12,200,'2010-09-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (12,201,'2010-09-11');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (12,202,'2010-09-11');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (12,203,'2010-09-11');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (12,204,'2010-09-11');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (12,300,'2010-09-12');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (12,301,'2010-09-12');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,100,'2010-08-01');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,100,'2010-09-01');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,100,'2010-10-01');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,100,'2010-10-02');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,101,'2010-08-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,101,'2010-09-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,101,'2010-08-14');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,102,'2010-08-15');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,200,'2010-08-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,201,'2010-09-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,202,'2010-09-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,203,'2010-01-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,204,'2010-01-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,301,'2010-01-10');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,301,'2010-01-01');
INSERT INTO public.limpieza(numreg, numero, fecha)VALUES (11,301,'2010-01-07');

/******** AGREGAR DATOS CORRESPONDIENTES A USA SERVICIOS ********/

INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (5,1,'2010-08-25');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (5,1,'2010-08-30');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (5,1,'2010-09-24');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (5,2,'2010-08-18');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (5,2,'2010-09-01');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (5,3,'2010-09-05');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (5,4,'2010-09-20');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (5,4,'2010-09-29');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (5,6,'2010-09-25');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (4,2,'2010-09-17');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (4,2,'2010-08-29');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (4,3,'2010-09-01');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (4,3,'2010-09-05');
INSERT INTO public.usa(	cods, servicio_cods, fecha)	VALUES (4,3,'2010-09-19');

/******** AGREGAR DATOS CORRESPONDIENTES A RESERVAS ********/

INSERT INTO public.reserva(	dni, numero, entrada, salida)VALUES ('111111   ',101,'2011-02-01','2011-02-04');
INSERT INTO public.reserva(	dni, numero, entrada, salida)VALUES ('111111   ',102,'2011-02-03','2011-02-04');
INSERT INTO public.reserva(	dni, numero, entrada, salida)VALUES ('222222   ',300,'2011-02-02','2011-02-06');
INSERT INTO public.reserva(	dni, numero, entrada, salida)VALUES ('777777   ',203,'2011-02-17','2011-02-19');
INSERT INTO public.reserva(	dni, numero, entrada, salida)VALUES ('777777   ',204,'2011-03-25','2011-03-27');
INSERT INTO public.reserva(	dni, numero, entrada, salida)VALUES ('999999   ',200,'2011-02-11','2011-02-15');
