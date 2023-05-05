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






