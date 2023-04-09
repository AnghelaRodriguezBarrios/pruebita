/* Crear base de datos dbRegistro */
CREATE DATABASE dbsistemadenotas;

/* Poner en uso la base de datos */
USE dbsistemadenotas;

/* Crear tabla PROFESOR */
CREATE TABLE PROFESOR (
    id_profesor char(5),
    nombre varchar(70),
    apellido varchar(70),
    documento_identidad char(8),
    direccion varchar(70),
    distrito varchar(70),
    fecha_nacimiento date,
    celular char(9),
    email varchar(70),
    PRIMARY KEY  (id_profesor)
);

/* AGREGANDO RESTRICCIONES VALORES UNICOS DE LA TABLA PROFESOR*/
ALTER TABLE PROFESOR
    ADD CONSTRAINT documenidentidad_UNICO UNIQUE(documento_identidad);
    
ALTER TABLE PROFESOR
    ADD CONSTRAINT correoelectro_UNICO UNIQUE(email);

ALTER TABLE PROFESOR
    ADD CONSTRAINT celular_UNICO UNIQUE(celular);

/* INSERTANDO REGISTROS DE LA TABLA APODERADO*/ 
INSERT INTO PROFESOR (id_profesor, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, celular, email)
VALUES
('10001','Javier','Espichan Quispe','76542893','Av.Las Flores','San Vicente','1970/02/10','987965423','javier.espichan@gmail.com')

INSERT INTO PROFESOR (id_profesor, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, celular, email)
VALUES
('10002','Hernan','Chumpitaz Quinto','79006940','Av.Los girasoles','Cerro Azul','1992/06/11','923654378','hernan.chumpitaz@gmail.com')

INSERT INTO PROFESOR (id_profesor, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, celular, email)
VALUES
('10003','Jose','Canales Rojas','76235231','9 de diciembre','Imperial','1964/04/10','925432653','jose.canales@gmail.com')

INSERT INTO PROFESOR (id_profesor, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, celular, email)
VALUES
('10004','Silvia','Gómez Rodríguez','35764859','28 de Julio','San Vicente','1995/08/07','923586457','silvia.gomez@gmail.com')

INSERT INTO PROFESOR (id_profesor, nombre, apellido, documento_identidad, direccion, distrito, fecha_nacimiento, celular, email)
VALUES
('10005','Julio','Pérez Silva','26493649','Av.Las Flores','San Vicente','1993/02/06','965432275','julio.perez@gmail.com')

/* Listar los registros de la tabla PROFESOR*/
SELECT * FROM PROFESOR;