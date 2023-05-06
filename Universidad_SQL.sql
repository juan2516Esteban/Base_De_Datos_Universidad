create table "Sisben" (Id_sisben serial, Grupo varchar); 

insert into "Sisben" (Grupo) values ('Grupo A'),
('Grupo B'), ('Grupo C') , ('Grupo D') , ('No pertenece')

select * from "Sisben"

create table "Jornada" (Id_Jornada serial, Nombre varchar)
insert into "Jornada" (Nombre) values ('Diurna'), ('Nocturna'),
('Ambas')

select * from "Jornada"

create table rol_administrativo  (id_rol serial , nombre varchar);

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

CREATE TABLE victimas(
id_victimas int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id_victimas),
nombre_victimas varchar(150) NOT NULL
)
INSERT INTO `victimas`(`id_victimas`, `nombre_victimas`) VALUES ('1','poblacion victimas del conflicto'), ('2','poblacion con discapacidad'),('3','poblacion adulta mayor'),('4','genero'),('5','poblacion situacion de calle'),('6','poblacion etnica'),('7','poblacion migrante'),('8','ninguno')

CREATE TABLE bono_alimenticio(
id_bono_alimenticio int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id_bono_alimenticio),
valor_bono int NOT NULL
)
INSERT INTO `bono_alimenticio`(`id_bono_alimenticio`, `valor_bono`) VALUES ('1','3000'),('2','5000'),('3','8000'),('4','0')

CREATE TABLE asignatura(
id_asignatura int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id_asignatura),
nombre_asignatura varchar(150) NOT NULL
)
INSERT INTO `asignatura`(`id_asignatura`, `nombre_asignatura`) VALUES ('1','calculo i'),('2','calculo ii'),('3','calculo iii'),('4','calculo iv'),('5','programacion i'),('6','programacion ii'),('7','programacion iii'),('8','programacion iv'),('9','estructura de datos '),('10','patrones de diseño'),('11','entornos de desarrollo de software'),('12','estadistica '),('13','bases de datos'),('14','programacion web'),('15','programacion movil')

CREATE TABLE carrera(
id_carrera int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id_carrera),
nombre_carrera varchar(150) NOT NULL
)
INSERT INTO `carrera`(`id_carrera`, `nombre_carrera`) VALUES ('1','ingenieria electrica'),('2','ingeniera mecatronica'),('3','ingenieria de sistemas '),('4','ingenieria industrial'),('5','ingenieria biomedica'),('6','ingenieria aeronautica'),('7','ingeniera quimica '),('8','ingeniera fisica'),('9','ingenieria mecanica '),('10','ingenieria electronica'),('11','ingeniera agricola '),('12','ingeniera de maderas'),('13','ingenieria agroindustrial'),('14','ingenieria civil '),('15','ingeneria Software'),('16','licenciatura en matematicas'),('17','licenciatura en estadistica'),('18','licenciatura en astronomia'),('19','contabilidad'),('20','administracion de empresas'),('21','marketing '),('22','negocios internacionales')

CREATE TABLE grupo_etnico(
id_grupo_etnico int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id_grupo_etnico),
nombre_etnico varchar(150) NOT NULL
)
INSERT INTO `grupo_etnico`(`id_grupo_etnico`, `nombre_etnico`) VALUES ('1','indigena
'),('2','afrocolombi@'),('3','raizal'),('4','palenquero'),('5','gitano'),('6','ninguno')




