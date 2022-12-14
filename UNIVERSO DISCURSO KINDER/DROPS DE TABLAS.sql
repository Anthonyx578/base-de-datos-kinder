----------------------------------- CREACION DE TABLAS-----------------------------------------------------------------------
CREATE TABLE GENERO(
ID_GENERO INTEGER NOT NULL PRIMARY KEY,
GENERO VARCHAR2(20)
);

CREATE TABLE MEDICINA(
ID_MEDICINA INTEGER NOT NULL PRIMARY KEY,
NOMBREMEDICINA varchar2(50),
DESCRIPCION varchar2(50)
);


 CREATE TABLE TIPOACTIVIDAD(
 ID_TIPOACTIVIDAD INTEGER NOT NULL PRIMARY KEY,
 TIPOACTIVIDAD VARCHAR2(100),
 DESCRIPCION VARCHAR2 (200)
);

CREATE TABLE PROFESORES(
CEDULAPROFESOR INTEGER NOT NULL PRIMARY KEY,
NOMBRES varchar2(50),
APELLIDOS varchar2(50),
NACIONALIDAD VARCHAR2(50),
FECHADEINGRESO DATE,
NSENCYT NUMBER (5,0),
FK_ID_GENERO INTEGER,
CONSTRAINT FK_ID_GENERO FOREIGN KEY (FK_ID_GENERO) REFERENCES GENERO(ID_GENERO)
);

 CREATE TABLE ACTVIDADENPROGRAMA(
 ID_ACTIVIDAD INTEGER NOT NULL PRIMARY KEY,
 NOMBREACTIVIDAD VARCHAR2(50),
 DESCRIPCION VARCHAR2(100),
 NUMALUMNOS NUMBER(3),
 NUMALUMNOS_DESERTORES NUMBER(3),
 MATERIALES VARCHAR2(200),
 FK_ID_TIPOACTIVIDAD INTEGER,
 FK_CEDULAPROFESOR INTEGER,
 CONSTRAINT FK_ID_TIPOACTIVIDAD FOREIGN KEY (FK_ID_TIPOACTIVIDAD) REFERENCES TIPOACTIVIDAD(ID_TIPOACTIVIDAD),
 CONSTRAINT FK_CEDULAPROFESOR FOREIGN KEY (FK_CEDULAPROFESOR) REFERENCES PROFESORES(CEDULAPROFESOR)
 );
 
 CREATE TABLE TUTORES(
CEDULATUTOR INTEGER NOT NULL PRIMARY KEY,
NOMBRES varchar2(50),
APELLIDOS varchar2(50),
NACIONALIDAD VARCHAR2(50),
DIRECCION VARCHAR2(100),
TELEFONO NUMBER(10),
TELEFONODOMICILIO NUMBER(10),
--FK--
FK_ID_GENERO  INTEGER NOT NULL,
CONSTRAINT FK_ID_GENEROTUTORES FOREIGN KEY (FK_ID_GENERO) REFERENCES GENERO(ID_GENERO)
);

CREATE TABLE NI?O(
CEDULANI?O INTEGER NOT NULL PRIMARY KEY,
NOMBRES varchar2(50),
APELLIDOS varchar2(50),
NACIONALIDAD VARCHAR2(50),
EDAD INTEGER,
FECHANACIMIENTO DATE,
--LLAVES SECUNDARIAS
FK_ID_GENERO  INTEGER NOT NULL,
CONSTRAINT FK_ID_GENERONI?O FOREIGN KEY (FK_ID_GENERO) REFERENCES GENERO(ID_GENERO)
);

CREATE TABLE ESTADO_SOCIAL(
ID_ESTADO INTEGER NOT NULL PRIMARY KEY,
TALLAVESTIMENTA varchar2(50),
TALLAZAPATOS varchar2(50),
ALERGIAS VARCHAR2(50),
DIAGNOSTICO VARCHAR2(50),
FECHAULTIMAENFERMEAD DATE,
FK_CEDULANI?O INTEGER,
CONSTRAINT FK_CEDULANI?O FOREIGN KEY (FK_CEDULANI?O) REFERENCES NI?O(CEDULANI?O)
);

CREATE TABLE MEDICINAXESTADO(
FK_ID_ESTADO INTEGER,
FK_ID_MEDICINA INTEGER,
CONSTRAINT FK_ID_ESTADO FOREIGN KEY (FK_ID_ESTADO) REFERENCES ESTADO_SOCIAL(ID_ESTADO),
CONSTRAINT FK_ID_MEDICINA FOREIGN KEY (FK_ID_MEDICINA) REFERENCES MEDICINA(ID_MEDICINA)
);

CREATE TABLE TUTORESNI?O(
FK_CEDULATUTOR INTEGER,
FK_CEDULANI?O INTEGER,
CONSTRAINT FK_CEDULATUTOR FOREIGN KEY (FK_CEDULATUTOR) REFERENCES TUTORES(CEDULATUTOR),
CONSTRAINT FK_CEDULANI?OTUTOR FOREIGN KEY (FK_CEDULANI?O) REFERENCES NI?O(CEDULANI?O)
);

Create table Padre(
CEDULAPADRE INTEGER NOT NULL PRIMARY KEY,
NOMBRES varchar2(50),
APELLIDOS varchar2(50),
NACIONALIDAD VARCHAR2(50),
DIRECCION VARCHAR2(100),
TELEFONO NUMBER(10),
TELEFONODOMICILIO NUMBER(10),
FECHANACIMIENTO DATE,
--LLAVES SECUNDARIAS
FK_ID_GENERO INTEGER NOT NULL,
FK_CEDULANI?O INTEGER NOT NULL,
CONSTRAINT FK_ID_GENEROPADRE FOREIGN KEY (FK_ID_GENERO) REFERENCES GENERO(ID_GENERO),
CONSTRAINT FK_CEDULANI?OPADRE FOREIGN KEY (FK_CEDULANI?O) REFERENCES NI?O(CEDULANI?O)
);

 CREATE TABLE MATRICULAPROGRAMA(
 ID_MATRICULA INTEGER NOT NULL PRIMARY KEY,
 DESCRIPCION VARCHAR2(100),
 A?OELECTIVO DATE,
 DESEMPENIO VARCHAR2(50),
 FK_CEDULANI?O INTEGER,
 FK_ID_ACTIVIDAD INTEGER,
 CONSTRAINT FK_CEDULANI?OMATRICULA FOREIGN KEY (FK_CEDULANI?O) REFERENCES NI?O(CEDULANI?O),
 CONSTRAINT FK_ID_ACTIVIDAD2 FOREIGN KEY (FK_ID_ACTIVIDAD) REFERENCES ACTVIDADENPROGRAMA(ID_ACTIVIDAD),
 CONSTRAINT CHECK_DESEMPENIO CHECK (DESEMPENIO in ('BUENO','REGULAR','MALO'))
 );

----------------------------------------------------------------------------------------------------------------------