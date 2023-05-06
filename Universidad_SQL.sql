create table "sisben" (Id_sisben serial primary key not null, Grupo varchar); 

insert into "sisben" (Grupo) values ('Grupo A'),
('Grupo B'), ('Grupo C') , ('Grupo D') , ('No pertenece');

create table tipo_sangre (id_tipo_sangre serial primary key, tipo varchar)

insert into tipo_sangre (tipo) values ('A+') , ('O+') , ('B+') , ('AB+') , ('A-'),
('O-') , ('B-') , ('AB-')

select * from tipo_sangre

create table "jornada" (id_jornada serial primary key not null, Nombre varchar)

insert into "jornada" (Nombre) values ('Diurna'), ('Nocturna'),
('Ambas')

select * from "jornada"

create table rol_administrativo  (id_rol serial primary key not null, nombre varchar);

insert into rol_administrativo (Nombre) values('Secretario Academico'), ('Gerente de Recursos Humanos'),
('Gerente Financiero') , ('Director de Comunicaciones') , ('Gestor de Marketing') , 
('Gestor de Tecnologia ') , ('Coordinador de Eventos')

select * from rol_administrativo


--facultad, dia, discapacidad, municipios, ORJUELA

------------------------------FACULTADES-----------------------------
CREATE TABLE Facultades
(
	id_facultad serial,
	nombre_facultad varchar(50)
);

insert into Facultades(nombre_facultad)
values('Ingenierias'),
('Ciencias exactas'),
('Negocios');

alter table Facultades
add primary key (id_facultad);

select * from Facultades;

-------------------------------dias---------------------------------------------
CREATE TABLE Dias
(
	id_dia SERIAL,
	nombre_dia varchar(20)
);

insert into Dias(nombre_dia)
values('Lunes'),
('Martes'),
('Miercoles'),
('Jueves'),
('Viernes');


alter table Dias
add primary key (id_dia);

select * from Dias

Alter table Dias RENAME id_dias TO id_dia;

-------------------------------discapacidad---------------------------------------------
Create table Discapacidades
(
	id_discapacidad serial,
	tipo_discapacidad varchar(30)
)

INSERT INTO Discapacidades(tipo_discapacidad)
VALUES('mental'),
      ('intelectual'),
      ('psicologica'),
      ('multiple'),
      ('sensorial'),
      ('auditiva'),
      ('fisica'),
      ('visual'),
      ('ninguna');
	  
	  
alter table Discapacidades
add primary key (id_discapacidad);
	  
select * from Discapacidades;

-------------------------------Municipios---------------------------------------------
CREATE TABLE Municipios (
  id_municipio serial PRIMARY KEY,
  municipio VARCHAR(50),
  departamento VARCHAR(50)
);

INSERT INTO Municipios (municipio, departamento) VALUES
  ('Armenia', 'Quindio'),
  ( 'Cordoba', 'Quindio'),
  ( 'Tebaida', 'Quindio'),
  ( 'Calarca', 'Quindio'),
  ( 'Pijao', 'Quindio'),
  ( 'Genova', 'Quindio'),
  ( 'Buenavista', 'Quindio'),
  ( 'Montenegro', 'Quindio'),
  ( 'Filandia', 'Quindio'),
  ( 'Circasia', 'Quindio'),
  ( 'Salento', 'Quindio'),
  ( 'Quimbaya', 'Quindio'),
  ( 'Caicedonia', 'Quindio'),
  ( 'Pereira', 'Risaralda'),
  ( 'Santa rosa', 'Risaralda'),
  ( 'Mistrató', 'Risaralda'),
  ( 'Santuario', 'Risaralda'),
  ( 'Dosquebradas', 'Risaralda'),
  ( 'La celia', 'Risaralda'),
  ( 'Pueblo rico', 'Risaralda'),
  ( 'Chinchina', 'Risaralda'),
  ( 'Guática', 'Risaralda'),
  ( 'Balboa', 'Risaralda'),
  ( 'Apia', 'Risaralda'),
  ( 'Belén de umbría', 'Risaralda'),
  ( 'Belalcazar', 'Risaralda'),
  ( 'La virginia', 'Risaralda');
  
  select * from Municipios
  --pruebitaaaa

----------------------------------------Fabian-------------------------------------------------

--------------------------------VICTIMAS--------------------------------
CREATE TABLE victimas(
	id_victimas SERIAL PRIMARY KEY,
	nombre_victimas varchar(150) NOT NULL
);

INSERT INTO victimas (nombre_victimas)
VALUES ('poblacion victimas del conflicto'), 
('poblacion con discapacidad'),
('poblacion adulta mayor'),
('genero'),
('poblacion situacion de calle'),
('poblacion etnica'),
('poblacion migrante'),
('ninguno');

--------------------------------BONO ALIMENTICIO--------------------------------

CREATE TABLE bono_alimenticio (
    id_bono_alimenticio SERIAL PRIMARY KEY,
    valor_bono integer NOT NULL
);

INSERT INTO bono_alimenticio (valor_bono)
VALUES (3000), (5000), (8000), (0);

--------------------------------ASIGNATURAS--------------------------------

CREATE TABLE asignatura (
    id_asignatura SERIAL PRIMARY KEY,
    nombre_asignatura varchar(150) NOT NULL
);

INSERT INTO asignatura (nombre_asignatura)
VALUES ('calculo i'),
('calculo ii'),
('calculo iii'),
('calculo iv'),
('programacion i'),
('programacion ii'),
('programacion iii'),
('programacion iv'),
('estructura de datos'),
('patrones de diseño'),
('entornos de desarrollo de software'),
('estadistica'),
('bases de datos'),
('programacion web'),
('programacion movil');

--------------------------------CARRERAS--------------------------------

CREATE TABLE carrera (
    id_carrera SERIAL PRIMARY KEY,
    nombre_carrera varchar(150) NOT NULL
);

INSERT INTO carrera (nombre_carrera)
VALUES ('ingenieria electrica'),
('ingeniera mecatronica'),
('ingenieria de sistemas'),
('ingenieria industrial'),
('ingenieria biomedica'),
('ingenieria aeronautica'),
('ingeniera quimica'),
('ingeniera fisica'),
('ingenieria mecanica'),
('ingenieria electronica'),
('ingeniera agricola'),
('ingeniera de maderas'),
('ingenieria agroindustrial'),
('ingenieria civil'),
('ingeneria Software'),
('licenciatura en matematicas'),
('licenciatura en estadistica'),
('licenciatura en astronomia'),
('contabilidad'),
('administracion de empresas'),
('marketing'),
('negocios internacionales');

-------------------------------GRUPOS ETNICOS--------------------------------

CREATE TABLE grupo_etnico (
    id_grupo_etnico SERIAL PRIMARY KEY,
    nombre_etnico varchar(150) NOT NULL
);

INSERT INTO grupo_etnico (nombre_etnico)
VALUES ('indigena'),
('afrocolombi@'),
('raizal'),
('palenquero'),
('gitano'),
('ninguno');

select * from grupo_etnico 


--------------------------------Tabla_Detalle_Profesores----------------------------------------

create table "profesores" (id_profesor serial primary key, nombre varchar(30), apellido varchar(30), 
dirección varchar(45), documento varchar(20),
sueldo float, correo_electronico varchar(70),celular int, doctorado boolean) 

alter table profesores add column id_titulo_universitario integer,
add constraint id_carrera_foreing_key 
foreign key(id_titulo_universitario)
references carrera(id_carrera)

alter table profesores add column id_discapacidad integer, 
add constraint id_discapacidad_foreing_key
foreign key(id_discapacidad) 
references discapacidades(id_discapacidad)

alter table profesores add column id_grupo_etnico integer,
add constraint id_grupo_etnico_foreing_key 
foreign key (id_grupo_etnico)
references grupo_etnico(id_grupo_etnico)

alter table profesores add column id_jornada integer,
add constraint id_jornada_foreing_key 
foreign key (id_jornada)
references Jornada(id_jornada)

alter table profesores add column id_facultad integer,
add constraint id_facultad_foreing_key 
foreign key (id_facultad)
references facultades(id_facultad)

alter table profesores add column id_municipio integer,
add constraint id_municipio_foreing_key 
foreign key (id_municipio)
references municipios(id_municipio)

alter table profesores add column id_tipo_sangre integer,
add constraint id_tipo_sangre_foreing_key 
foreign key (id_tipo_sangre)
references tipo_sangre(id_tipo_sangre)

alter table profesores add column id_sisben integer,
add constraint id_sisben_foreing_key 
foreign key (id_sisben)
references sisben(id_sisben)

select * from profesores

insert into profesores (nombre,apellido,dirección,documento,id_titulo_universitario,
id_discapacidad,sueldo,correo_electronico,id_grupo_etnico,celular,id_jornada,
id_facultad,id_municipio,doctorado,id_tipo_sangre,id_sisben)

values('Juan Esteban','Salazar Londoño','Calle 12 #23-45','1938756209',8,9,3000000,
'juan.salazar@gmail.com',6,3101234567,1,1,14,FALSE,1,1)


