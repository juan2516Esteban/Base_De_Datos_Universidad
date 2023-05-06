create table "Sisben" (Id_sisben serial primary key not null, Grupo varchar); 

insert into "Sisben" (Grupo) values ('Grupo A'),
('Grupo B'), ('Grupo C') , ('Grupo D') , ('No pertenece');



create table "Jornada" (Id_Jornada serial primary key not null, Nombre varchar)
insert into "Jornada" (Nombre) values ('Diurna'), ('Nocturna'),
('Ambas')

select * from "Jornada"

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

