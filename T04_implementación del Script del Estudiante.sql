/* Crear base de datos dbRegistro */
CREATE DATABASE dbsistemadenotas;

/* Poner en uso la base de datos */
USE dbsistemadenotas;

/* Crear tabla ESTUDIANTE */
CREATE TABLE ESTUDIANTE (
    id_estudiante char(5),
    nombre varchar(70),
    apellido varchar(70),
    documento_identidad varchar(11),
    direccion varchar(70),
    distrito varchar(70),
    fecha_nacimiento date,
    email varchar(70),
    grado varchar(1),
    seccion varchar(1),
    nivel varchar(11),
    PRIMARY KEY  (id_estudiante)
);

/* AGREGANDO RESTRICCIONES VALORES UNICOS DE LA TABLA APODERADO*/
ALTER TABLE ESTUDIANTE
    ADD CONSTRAINT documentoidentidad_UNICO UNIQUE(documento_identidad);
    
ALTER TABLE ESTUDIANTE
    ADD CONSTRAINT correoelectronico_UNICO UNIQUE(email);

/* INSERTANDO REGISTROS DE LA TABLA ESTUDIANTE*/

INSERT INTO ESTUDIANTE (id_estudiante, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, email, grado, seccion, nivel)
VALUES
('10001','luis','Arteaga Casas','76396940','Av.Las Flores','San Vicente','2015/03/22','luis.arteagacasas@gmail.com','3','A','primaria')

INSERT INTO ESTUDIANTE (id_estudiante, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, email, grado, seccion, nivel)
VALUES
('10002','Maria Ana','Rosas Cardenas','87651234512','La livertad','San Vicente','2008/06/12','maria.rosas@gmail.com','4','B','secundaria')

INSERT INTO ESTUDIANTE (id_estudiante, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, email, grado, seccion, nivel)
VALUES
('10003','David','Rodriguez Condori','76345124','Santa rosalia','San Vicente','2016/08/14','david.rodriguez@gmail.com','1','A','primaria')

INSERT INTO ESTUDIANTE (id_estudiante, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, email, grado, seccion, nivel)
VALUES
('10004','Livia Antonia','Canales Sandoval','78234561352','Av.Santa rosa','San Vicente','2009/07/04','Livia.canalessandoval@gmail.com','3','A','secundaria')

INSERT INTO ESTUDIANTE (id_estudiante, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, email, grado, seccion, nivel)
VALUES
('10005','Gael Ismael','Rosales Garcia','77345124','Santa rosalia','San Vicente','2012/04/14','Gael.rosales@gmail.com','6','A','primaria')


/* Listar los registros de la tabla ESTUDIANTE*/
SELECT * FROM ESTUDIANTE;

/* INSERTANDO REGISTROS pero actualizando informacion de un alumno*/
INSERT INTO ESTUDIANTE (id_estudiante, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, email, grado, seccion, nivel)
VALUES
('10006','Patricia','Rodriguez Barrios','78532456','Av.jose galvez','San Vicente','2013/07/04','Patricia.rodriguez@gmail.com','3','A','primaria')

INSERT INTO ESTUDIANTE (id_estudiante, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, email, grado, seccion, nivel)
VALUES
('10007','Susana','Sanchez Dias','76129802','Casuarinas','San Vicente','2012/04/14','Susana.sanchez@gmail.com','5','b','primaria')


/*Cambiar en el grado al nuevo grado que ingresara */
UPDATE ESTUDIANTE
	SET grado = '4'
    WHERE id_estudiante = '10006';
SELECT * FROM ESTUDIANTE;

/*Cambiar la seccion al nuevo grado que ingresara */
UPDATE ESTUDIANTE
	SET seccion = 'B'
    WHERE id_estudiante = '10006';
SELECT * FROM ESTUDIANTE;

/*Cambiar en el grado al nuevo grado que ingresara */
UPDATE ESTUDIANTE
	SET grado = '6'
    WHERE id_estudiante = '10007';
SELECT * FROM ESTUDIANTE;

/*Cambiar la seccion al nuevo grado que ingresara */
UPDATE ESTUDIANTE
	SET seccion = 'A'
    WHERE id_estudiante = '10007';
SELECT * FROM ESTUDIANTE;