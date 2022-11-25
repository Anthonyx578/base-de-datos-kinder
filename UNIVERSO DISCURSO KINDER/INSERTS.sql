----------------------------------------------INSERT------------------------------------------------------------------
--GENEROS----------------------------------------
 --TRUNCAR--------------------------------------
 TRUNCATE TABLE GENERO;
 -----------------------------------------------
INSERT INTO GENERO VALUES (1,'MASCULINO');
INSERT INTO GENERO VALUES (2,'FEMENINO');
SELECT * FROM GENERO;
 ------------------------------------------------

  --PADRES---------------------------------------
 --TRUNCAR--------------------------------------
 TRUNCATE TABLE Padre;
 -----------------------------------------------
INSERT INTO Padre VALUES (1305669968,'MANUEL','DELGADO','ECUATORINO','CALLE 319 AV 218',0962154879,0523515151,'15-02-1983',1);
INSERT INTO Padre VALUES (1305669973,'ISABELLA','MACIAS','ECUATORINO','CALLE 302 AV 203',0962157843,0523519785,'23-12-1993',1);
INSERT INTO Padre VALUES (1305669969,'ROBERTO','ANDRADE','ECUATORINO','CALLE 315 AV 230',0962154889,0523518596,'20-02-1990',1);

SELECT * FROM Padre;
 --------------------------------------------------------------------------------------------------------------------- 
 --NINIOS---------------------------------------
 --TRUNCAR--------------------------------------
 TRUNCATE TABLE NINIO;
 -----------------------------------------------
INSERT INTO NINIO VALUES (1315669968,'JORGE','DELGADO','ECUATORINO',5,'15-02-2017',1,1305669968);
INSERT INTO NINIO VALUES (1315669967,'ALEJANDRA','MACIAS','ECUATORINO',4,'15-02-2018',2,1305669973);
INSERT INTO NINIO VALUES (1315669966,'JUAN','ANDRADE','ECUATORINO',3,'15-02-2019',1,1305669969);

SELECT * FROM NINIO;
 
 ---------------------------------------------------------------------------------------------------------------------
 --PROFESORES ---------------------------------------
 --TRUNCAR--------------------------------------
 TRUNCATE TABLE PROFESORES;
 -----------------------------------------------
INSERT INTO PROFESORES VALUES (1305669968,'RODRIGO','INTRIAGO','ECUATORINO','15-01-2019',54879,1);
INSERT INTO PROFESORES VALUES (1305669973,'ISABELLA','VELEZ','ECUATORINO','27-05-2015',57843,2);
INSERT INTO PROFESORES VALUES (1305669969,'RAUL','SANTIAGO','ECUATORINO','08-01-2015',54889,1);

SELECT * FROM PROFESORES;
 ---------------------------------------------------------------------------------------------------------------------
  --TIPOACTIVIDAD ---------------------------------------
 --TRUNCAR--------------------------------------
 TRUNCATE TABLE TIPOACTIVIDAD;
 -----------------------------------------------
 --El kínder cuenta con programas para la estimulación del desarrollo intelectual, emocional y motriz del niño
INSERT INTO TIPOACTIVIDAD VALUES (1,'INTELECTUAL','ACTIVIDAD DE TIPO INTELECTUAL');
INSERT INTO TIPOACTIVIDAD VALUES (2,'EMOCIONAL','ACTIVIDAD DE TIPO EMOCIONAL');
INSERT INTO TIPOACTIVIDAD VALUES (3,'MOTRIZ','ACTIVIDAD DE TIPO MOTRIZ');

SELECT * FROM TIPOACTIVIDAD;
 ---------------------------------------------------------------------------------------------------------------------
--ACTIVIDAD ---------------------------------------
 --TRUNCAR--------------------------------------
 TRUNCATE TABLE ACTIVIDAD;
 -----------------------------------------------
INSERT INTO ACTIVIDAD VALUES (1,'DESAROLLO DE LA MEMORIA','EJERICIOS PARA ESTIMULACION DE LA MEMORIA',6,30,10,'ROMPECABEZAS Y PARES DE CARTAS',30,1,1305669968);
INSERT INTO ACTIVIDAD VALUES (2,'ESTIMULACION EMOCIONAL','HISTORIAS Y RELATOS SENTIMENTALES',6,10,2,'LIBROS',30,2,1305669973);
INSERT INTO ACTIVIDAD VALUES (3,'CAMINATAS','CAMINATAS EN EL PATIO DE RECREO',3,20,1,'ZAPATOS DEPORTIVOS TALLA DEL NIÑO',30,3,1305669969);

SELECT * FROM ACTIVIDAD; 
---------------------------------------------------------------------------------------------------------------------
--MATRICULAACTIVIDAD ---------------------------------------
 --TRUNCAR--------------------------------------
 TRUNCATE TABLE MATRICULAACTIVIDAD;
 -----------------------------------------------
INSERT INTO MATRICULAACTIVIDAD VALUES (1,'MATRICULACION A DESAROLLO DE LA MEMORIA','01-08-2020','BUENO',0,1315669968,1);
INSERT INTO MATRICULAACTIVIDAD VALUES (2,'MATRICULACION A ESTIMULACION EMOCIONAL','01-08-2020','MALO',0,1315669968,2);
INSERT INTO MATRICULAACTIVIDAD VALUES (3,'MATRICULACION A CAMINATAS','01-08-2019','REGULAR',0,1315669968,3);
INSERT INTO MATRICULAACTIVIDAD VALUES (4,'MATRICULACION A DESAROLLO DE LA MEMORIA','01-08-2020','BUENO',0,1315669968,1);
INSERT INTO MATRICULAACTIVIDAD VALUES (5,'MATRICULACION A DESAROLLO DE LA MEMORIA','01-08-2020','MALO',0,1315669967,1);
INSERT INTO MATRICULAACTIVIDAD VALUES (6,'MATRICULACION A DESAROLLO DE LA MEMORIA','01-08-2021','MALO',0,1315669967,1);
INSERT INTO MATRICULAACTIVIDAD VALUES (7,'MATRICULACION A CAMINATAS','01-08-2020','BUENO',0,1315669966,3);
INSERT INTO MATRICULAACTIVIDAD VALUES (8,'MATRICULACION A CAMINATAS','01-08-2020','BUENO',0,1315669966,3);

SELECT * FROM MATRICULAACTIVIDAD; 
-----------------------------------------------------------------------------------------------------------------------
--ESTADO_SOCIAL ---------------------------------------
 --TRUNCAR--------------------------------------
 TRUNCATE TABLE ESTADO_SOCIAL;
 -----------------------------------------------
INSERT INTO ESTADO_SOCIAL VALUES (1,'59','20','ALERGIA AL POLEN DE LAS FLORES','MANTENER ALEJADO DE FLORES A LOS NIÑOS','15-01-2021',1315669968);
INSERT INTO ESTADO_SOCIAL VALUES (2,'57','22','ALERGIA AL PELO DE ANIMALES','MANTENER ALEJADO DE ANIMALES','15-05-2021',1315669967);
INSERT INTO ESTADO_SOCIAL VALUES (3,'60','22','NO TIENE ALERGIAS','NIO SANO','20-05-2020',1315669966);

SELECT * FROM ESTADO_SOCIAL; 
---------------------------------------------------------------------------------------------------------------------
