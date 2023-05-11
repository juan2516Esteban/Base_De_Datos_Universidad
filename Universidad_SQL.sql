---------------Sisben--------------------
create table "sisben" (Id_sisben serial primary key not null, Grupo varchar); 

insert into "sisben" (Grupo) values ('Grupo A'),
('Grupo B'), ('Grupo C') , ('Grupo D') , ('No pertenece');

---------------------TipoDeSangre-----------------------

create table tipo_sangre (id_tipo_sangre serial primary key, tipo varchar)

insert into tipo_sangre (tipo) values ('A+') , ('O+') , ('B+') , ('AB+') , ('A-'),
('O-') , ('B-') , ('AB-')

select * from tipo_sangre

------------------Jornada-----------------------

create table "jornada" (id_jornada serial primary key not null, Nombre varchar)

insert into "jornada" (Nombre) values ('Diurna'), ('Nocturna'),
('Ambas')

select * from "jornada"

------------------RolAdministrativo--------------------

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
sueldo float, correo_electronico varchar(70),celular varchar, doctorado boolean) 

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
'juan.salazar@gmail.com',6,'3101234567',1,1,14,FALSE,1,1),

('Ana','Rodriguez Garcia','Carrera 7 #45-67','1984265307',1,9,2500000,
'ana.rodriguez@gmail.com',6,'3202345678',1,3,14,FALSE,2,2),

('Carlos','Perez Gomez','Calle 54 #34-12','1973485620',3,1,4000000,
'carlos.perez@gmail.com',6,'3153456789',1,3,14,FALSE,3,3),

('Maria','Sanchez Rodriguez','Carrera 12 #32-45','1924758360',16,5,3500000,
'maria.sanchez@outlook.com',6,'3104567890',1,1,14,FALSE,3,5),

('Luis','Hernandez Vasquez','Calle 23 #56-78','1947682053',3,9,2800000,
'luis.hernandez@outlook.com',3,'3205678901',2,1,14,FALSE,4,5),

('Andrea','Lopez Montoya','Carrera 8 #23-56','1983506271',2,6,3200000,
'andrea.lopez@gmail.com',5,'3156789012',3,2,14,TRUE,5,5),

('Juan','Gomez Perez','Calle 34 #67-89','1962874530',3,9,4500000,
'juan.gomez@gmail.com',1,'3107890123',3,2,14,FALSE,6,5),

('Carolina','Garcia Ortiz','Carrera 5 #12-34','1927358460',16,9,2700000,
'carolina.garcia@outlook.com',6,'3208901234',3,2,14,FALSE,7,5),

('Sergio','Ruiz Castro','Calle 67 #45-23','1914375862',16,9,3100000,
'sergio.ruiz@outlook.com',6,'3159012345',3,2,14,FALSE,8,5),

('Laura','Ramirez Torres','Carrera 10 #43-21','1990724635',19,5,3400000,
'laura.ramirez@gmail.com',6,'3100123456',3,3,14,TRUE,1,5)

---------pruebas llave foranea ----------

select prof.nombre,prof.apellido, carer.nombre_carrera ,d.tipo_discapacidad , grup.nombre_etnico,
jor.nombre, facul.nombre_facultad , muni.municipio, muni.departamento , tps.tipo , sis.grupo from profesores prof
left join carrera carer on  id_titulo_universitario = id_carrera
left join discapacidades d on prof.id_discapacidad = d.id_discapacidad
left join grupo_etnico grup on  prof.id_grupo_etnico = grup.id_grupo_etnico
left join jornada jor on prof.id_jornada = jor.id_jornada
left join facultades facul on prof.id_facultad = facul.id_facultad
left join municipios muni on prof.id_municipio = muni.id_municipio
left join tipo_sangre tps on prof.id_tipo_sangre = tps.id_tipo_sangre
left join sisben sis on prof.id_sisben = sis.id_sisben

----------Deacanos------------

create table "decanos" (id serial,nombre varchar(50), apellido varchar(50),direccón varchar(50), 
correo_electronico varchar(70), hora_entrada time, hora_salida time,sueldo float , celular varchar)

alter table decanos add column id_tipo_sangre integer,
add constraint id_tipo_sangre_foreign_key
foreign key (id_tipo_sangre)
references tipo_sangre(id_tipo_sangre)

alter table decanos add column id_grupo_etnico integer,
add constraint id_grupo_etnico_foreing_key 
foreign key (id_grupo_etnico)
references grupo_etnico(id_grupo_etnico)

alter table decanos add column id_facultad integer,
add constraint id_facultad_foreing_key 
foreign key (id_facultad)
references facultades(id_facultad)

alter table decanos add column id_municipio integer,
add constraint id_municipio_foreing_key 
foreign key (id_municipio)
references municipios(id_municipio)

insert into decanos (nombre,apellido,direccón,id_tipo_sangre,id_grupo_etnico,
correo_electronico,hora_entrada,hora_salida,sueldo,id_facultad,celular,id_municipio)

values('Maria','Hernandez','Calle 14 #23',1,6,'maria.hernandez@gmail.com',
'8:00:00','17:00:00',6000000.0,1,'3209876543',14),

('Juan','Martinez','Calle 25-22 #56',6,6,'juan.martinez@hotmail.com',
'9:00:00','18:00:00',6000000.0,2,'3118765432',14),

('Ana','Gonzalez','Calle 27-35 #59',1,6,'ana.gonzalez@gmail.com',
 '7:30:00','16:30:00',6000000.0,3,'3186543212',18)

select * from decanos

---------------Curso-----------------------

create table curso (id_curso serial,nombre varchar(15))

alter table curso add column id_asignatura integer,
add constraint id_asignatura_foreing_key
foreign key(id_asignatura)
references asignatura(id_asignatura)

alter table curso add column id_profesor integer,
add constraint id_profesor_foreing_key
foreign key(id_profesor)
references profesores(id_profesor)

insert into curso (nombre,id_asignatura,id_profesor)

values('TS4CAL1',1,6),('TS5CAL1',1,8),('TS6CAL1',1,10),
('TS4CAL2',2,6),('TS5CAL2',2,8),('TS6CAL2',2,10),
('TS6CAL3',3,1),('TS6CAL3',3,4),('TS6CAL3',3,9),
('TS6CAL4',4,1),('TS6CAL4',4,4),('TS6CAL4',4,9),
('TS7PRO1',5,3),('TS7PRO2',6,3),('TS8DIB1',7,6),
('TS8DIB2',8,6),('TS9ESTD1',9,7),('TS9ESTD2',10,7),
('TS10ELET1',11,2),('TS10ELET2',12,2),('TS11AGL',13,5),
('TS12FIS1',14,5),('TS12FIS2',15,5)

select * from curso

----------------------------------------ESTUDIANTES----------------------------------
create table estudiantes(
	id_estudiante serial primary key,
	nombre varchar(30),
	apellido varchar(30),
	direccion varchar(30),
	semestre int,
	correo_electronico varchar(30),
	celular varchar(20),
	documento varchar(20),
	bono_transporte boolean
);

alter table estudiantes add column id_municipio integer,
add constraint id_municipio_foreing_key 
foreign key (id_municipio)
references municipios(id_municipio)

alter table estudiantes add column id_tipo_sangre integer,
add constraint id_tipo_sangre_foreing_key 
foreign key (id_tipo_sangre)
references tipo_sangre(id_tipo_sangre)

alter table estudiantes add column id_discapacidad integer, 
add constraint id_discapacidad_foreing_key
foreign key(id_discapacidad) 
references discapacidades(id_discapacidad)

alter table estudiantes add column id_sisben integer,
add constraint id_sisben_foreing_key 
foreign key (id_sisben)
references sisben(id_sisben)

alter table estudiantes add column id_grupo_etnico integer,
add constraint id_grupo_etnico_foreing_key 
foreign key (id_grupo_etnico)
references grupo_etnico(id_grupo_etnico)

alter table estudiantes add column id_bono_alimenticio integer,
add constraint id_bono_alimenticio_foreing_key 
foreign key (id_bono_alimenticio)
references bono_alimenticio(id_bono_alimenticio)

alter table estudiantes add column id_carrera integer,
add constraint id_carrera_foreign_key
foreign key (id_carrera)
references carrera(id_carrera)

alter table estudiantes add column id_jornada integer,
add constraint id_jornada_foreing_key 
foreign key (id_jornada)
references jornada(id_jornada)

insert into estudiantes(nombre, apellido, direccion, id_municipio, id_tipo_sangre, semestre,
						correo_electronico, celular,documento, id_discapacidad,
						id_sisben, id_grupo_etnico, id_jornada,
						id_bono_alimenticio, bono_transporte,id_carrera)
values
('Ana', 'Garcia', 'Calle 12 #23-45', 14, 1, 4, 'ana.garcia@mail.com', '3115550101', '1112233344', 2, 1, 2, 1, 1, True, 1),	
('Juan', 'Perez', 'Carrera 34 #56-78', 14, 2, 2, 'juan.perez@gmail.com', '3102229876', '2223344455', 3, 2, 3, 2, 2, False, 5),
('Maria', 'Hernandez', 'Avenida 7 #8-90', 14, 3, 3, 'maria.hernandez@outlook.com', '3151234567', '3334422211', 2, 1, 3, 1, 3, True, 20),
('Carlos', 'Rodriguez', 'Calle 15 #30-20', 14, 2, 5, 'carlos.rodriguez@yahoo.com', '3209876543', '4445566677', 9, 1, 4, 1, 4, True, 22),
('Sofia', 'Gomez', 'Calle 18 #14-35', 14, 1, 1, 'sofia.gomez@icloud.com', '3172345678', '5554433221', 6, 3, 2, 2, 4, True, 5),
('Diego', 'Torres', 'Carrera 56 #12-34', 14, 4, 4, 'diego.torres@student.com', '3107778888', '6667778889', 1, 5, 4, 1, 1, True, 6),
('Laura', 'Castro', 'Avenida 9 #6-78', 18, 5, 2, 'laura.castro@outlook.com', '3149876543', '7778889990', 2, 5, 4, 1, 1, False, 10),
('Fabian', 'Sanchez', 'Carrera 23 #45-56', 18, 2, 3, 'fabian.sanchez@hmail.com', '3156789012', '8889990001', 8, 4, 5, 2, 3, True, 2),
('Paula', 'Vargas', 'Calle 40 #67-89', 18, 1, 5, 'paula.vargas@ymail.com', '3123456789', '9990001112', 3, 3, 4, 1, 3, False, 2),
('Oscar', 'Rueda', 'Avenida 6 #4-56', 27, 8, 1, 'oscar.rueda@student.com', '3181234567', '1112223334', 1, 5, 2, 2, 3, False, 5);

select * from estudiantes

-------------------------------------------PRUEBA LLAVE FORANEA ESTUDIANTES--------------------------
--municipio
select est.id_estudiante, est.nombre, mun.id_municipio, mun.municipio
from estudiantes est
left join municipios mun
on est.id_municipio = mun.id_municipio
order by est.id_estudiante asc;

--tipo sangre
select est.id_estudiante, est.nombre, sangre.id_tipo_sangre, sangre.tipo
from estudiantes est
left join tipo_sangre sangre
on est.id_tipo_sangre = sangre.id_tipo_sangre
order by est.id_estudiante asc;

--discapacidad
select est.id_estudiante, est.nombre, disc.id_discapacidad, disc.tipo_discapacidad
from estudiantes est
left join discapacidades disc
on est.id_discapacidad = disc.id_discapacidad
order by est.id_estudiante asc;

--sisben
select est.id_estudiante, est.nombre, sis.id_sisben, sis.grupo
from estudiantes est
left join sisben sis
on est.id_sisben = sis.id_sisben
order by est.id_estudiante asc;

--grupo etnico
select est.id_estudiante, est.nombre, etn.id_grupo_etnico, etn.nombre_etnico
from estudiantes est
left join grupo_etnico etn
on est.id_grupo_etnico = etn.id_grupo_etnico
order by est.id_estudiante asc;

--jornada
select est.id_estudiante, est.nombre, jor.id_jornada, jor.nombre
from estudiantes est
left join jornada jor
on est.id_jornada = jor.id_jornada
order by est.id_jornada asc;

--bono alimenticio
select est.id_estudiante, est.nombre, jor.id_jornada, jor.nombre
from estudiantes est
left join jornada jor
on est.id_jornada = jor.id_jornada
order by est.id_jornada asc;

--------------------------------------ADMINISTRATIVOS-------------------------------
create table administrativos(
	id_administrativo serial primary key,
	nombre varchar (30),
	apellido varchar (30),
	direccion varchar (30),
	correo_electronico varchar(30),
	hora_entrada time, 
	hora_salida time,
	sueldo numeric(10,2),
	celular varchar(20)
);
alter table administrativos add column id_tipo_sangre integer,
add constraint id_tipo_sangre_foreing_key 
foreign key (id_tipo_sangre)
references tipo_sangre(id_tipo_sangre)

alter table administrativos add column id_grupo_etnico integer,
add constraint id_grupo_etnico_foreing_key 
foreign key (id_grupo_etnico)
references grupo_etnico(id_grupo_etnico)

alter table administrativos add column id_facultad integer,
add constraint id_facultad_foreing_key 
foreign key (id_facultad)
references facultades(id_facultad)

ALTER TABLE rol_administrativo
ADD CONSTRAINT rol_administrativo_id_rol_unique UNIQUE (id_rol);
ALTER TABLE administrativos
ADD COLUMN id_rol INTEGER,
ADD CONSTRAINT id_rol_foreign_key
FOREIGN KEY (id_rol)
REFERENCES rol_administrativo (id_rol)
						 
alter table administrativos add column id_municipio integer,
add constraint id_municipio_foreing_key 
foreign key (id_municipio)
references municipios(id_municipio)

INSERT INTO administrativos (nombre, apellido, direccion, id_tipo_sangre, 
							 id_grupo_etnico, correo_electronico, hora_entrada,
							 hora_salida, sueldo, id_facultad, celular, id_rol, id_municipio)
VALUES ('Juan', 'Pérez', 'Carrera 8 # 23-80', 1, 6, 'jperez@gmail.com', '8:00', '16:00', 1500000.00, 2, '3012345678', 1, 14),
       ('María', 'García', 'Calle 19 # 5-34', 2, 6, 'mgarcia@gmail.com', '9:00', '17:00', 1700000.00, 3, '3109876543', 1, 14),
       ('Luis', 'González', 'Avenida 30 de Agosto # 10-01', 2, 6, 'lgonzalez@gmail.com', '8:30', '16:30', 2000000.00, 2, '3154567890', 2, 14),
       ('Ana', 'López', 'Calle 11 # 3-40', 4, 6, 'alopez@gmail.com', '10:00', '18:00', 2000000.00, 2, '3181234567', 3, 14),
       ('Roberto', 'Ramírez', 'Carrera 15 # 23-12', 5, 6, 'rramirez@gmail.com', '9:30', '17:30', 1500000.00, 1, '3207890123', 2, 14),
       ('Sofia', 'Cruz', 'Calle 17 # 5-18', 6, 6, 'scruz@gmail.com', '9:00', '17:00', 1200000.00, 1, '3212345678', 4, 14),
       ('Daniel', 'García', 'Avenida Sur # 4-25', 6, 4, 'dgarcia@gmail.com', '8:00', '16:00', 1450000.00, 1, '3238901234', 7, 14),
       ('Andrea', 'González', 'Carrera 7 # 11-20', 7, 6, 'agonzalez@gmail.com', '10:00', '18:00', 1700000.00, 1, '3245678901', 6, 14),
       ('Juanita', 'López', 'Calle 25 # 8-51', 1, 6, 'jlopez@gmail.com', '9:00', '17:00', 2000000.00, 3, '3251234567', 5, 14),
       ('Ricardo', 'Ramírez', 'Carrera 9 # 16-18', 1, 6, 'rramirez2@gmail.com', '8:30', '16:30', 2000000.00, 1, '3278901234', 7, 14);

select * from administrativos


------------------------------------------HORARIOS----------------------------------
create table horarios(
	id_hora_curso SERIAL primary key,
	hora_inicio time,
	hora_terminada time
)

--id curso foreign key
ALTER TABLE curso
ADD CONSTRAINT curso_id_curso_unique UNIQUE (id_curso);

ALTER TABLE horarios
ADD COLUMN id_curso INTEGER,
ADD CONSTRAINT id_curso_foreign_key
FOREIGN KEY (id_curso)
REFERENCES curso(id_curso);

--id dia foreign key
alter table horarios
add column id_dia integer,
add constraint id_dia_foreign_key
foreign key (id_dia)
references dias(id_dia)

select * from horarios

INSERT INTO horarios (id_curso, hora_inicio, hora_terminada, id_dia)
VALUES
  (1, '14:00', '16:00', 1),
  (1, '14:00', '16:00', 2),
  (1, '14:00', '16:00', 3),
  (1, '14:00', '16:00', 4),
  (2, '10:00', '12:00', 1),
  (2, '10:00', '12:00', 2),
  (2, '10:00', '12:00', 3),
  (2, '10:00', '12:00', 4),
  (3, '18:30', '20:10', 2),
  (3, '18:30', '20:10', 3),
  (3, '18:30', '20:10', 4),
  (3, '18:30', '20:10', 5),
  (4, '10:00', '12:00', 1),
  (4, '10:00', '12:00', 2),
  (4, '10:00', '12:00', 3),
  (4, '10:00', '12:00', 4),
  (5, '14:00', '16:00', 2),
  (5, '14:00', '16:00', 3),
  (5, '14:00', '16:00', 4),
  (5, '14:00', '16:00', 5),
  (6, '20:30', '22:10', 1),
  (6, '20:30', '22:10', 2),
  (6, '20:30', '22:10', 3),
  (6, '20:30', '22:10', 4),
  (7, '6:00', '8:00', 1),
  (7, '6:00', '8:00', 3),
  (7, '6:00', '8:00', 4),
  (7, '6:00', '8:00', 5),
  (8, '9:00', '11:00', 1),
  (8, '9:00', '11:00', 2),
  (8, '9:00', '11:00', 3),
  (8, '9:00', '11:00', 4),
  (9, '18:30', '20:10', 2),
  (9, '18:30', '20:10', 3),
  (9, '18:30', '20:10', 4),
  (9, '18:30', '20:10', 5),
  (10, '10:00', '12:00', 1),
  (10, '10:00', '12:00', 2),
  (10, '10:00', '12:00', 3),
  (11, '15:00', '17:00', 1),
  (11, '15:00', '17:00', 2),
  (11, '15:00', '17:00', 3),
  (12, '20:30', '22:10', 2),
  (12, '20:30', '22:10', 3),
  (12, '20:30', '22:10', 5),
  (13, '16:00', '18:00', 1),
  (13, '16:00', '18:00', 3),
  (14, '13:00', '15:00', 2),
  (14, '13:00', '15:00', 4),
  (15, '9:00', '11:00', 2),
  (16, '13:00', '15:00', 4),
  (17, '8:00', '10:00', 2),
  (17, '8:00', '10:00', 3),
  (18, '12:00', '2:00', 3),
  (18, '12:00', '2:00', 5),
  (19, '13:00', '15:00', 2),
  (19, '13:00', '15:00', 4),
  (20, '16:00', '18:00', 3),
  (20, '16:00', '18:00', 5),
  (21, '9:00', '11:00', 1),
  (21, '9:00', '11:00', 5),
  (22, '15:00', '17:00', 2),
  (22, '15:00', '17:00', 4),
  (23, '9:00', '11:00', 2),
  (23, '9:00', '11:00', 5);
  
 ---------------------------PRUEBAS LLAVES FORANEAS HORARIOS--------------------------------

SELECT h.id_hora_curso, h.hora_inicio, h.hora_terminada, c.id_curso, c.nombre, d.nombre_dia
FROM horarios AS h
LEFT JOIN curso AS c 
ON h.id_curso = c.id_curso
LEFT JOIN dias AS d 
ON h.id_dia = d.id_dia
ORDER BY h.id_hora_curso ASC;

select * from horarios



-----------------------------------------MATRICULAS



































































































------------------------------------------CALIFICACIONES------------------------------------



































































































