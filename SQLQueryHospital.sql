--CREACION DE BASE DE DATOS HOSPITAL

create database Hospital

--CREACION DE LA TABLA PACIENTES
create table Pacientes
(
cedula varchar(15) primary key,
nombre varchar(50) not null,
apellidos varchar(50) not null,
genero char (1),
seguro bit
)

--Insert de Paciente

insert into Pacientes values('1-1768-0659','Eusebio','Bogantes Azofeifa','M',1),('1-1882-0039','Jose','Bogantes Azofeifa','M',0)


-- Consulta de Registros

select * from Pacientes

