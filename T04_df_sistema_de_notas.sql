-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-04-09 08:45:58.452

-- tables
-- Table: CALIFICACION
CREATE TABLE CALIFICACION (
    id_calificacion int  NOT NULL,
    id_curso char(5)  NOT NULL,
    id_estudiante char(5)  NOT NULL,
    id_criterio int  NOT NULL,
    calificacion int  NOT NULL,
    numero_semestre int  NOT NULL,
    id_profesor char(5)  NOT NULL,
    CONSTRAINT CALIFICACION_pk PRIMARY KEY  (id_calificacion)
);

-- Table: CRITERIO
CREATE TABLE CRITERIO (
    id_criterio int  NOT NULL,
    descripcion int  NOT NULL,
    CONSTRAINT CRITERIO_pk PRIMARY KEY  (id_criterio)
);

-- Table: CURSO
CREATE TABLE CURSO (
    id_curso char(5)  NOT NULL,
    nombre varchar(50)  NOT NULL,
    CONSTRAINT CURSO_pk PRIMARY KEY  (id_curso)
);

-- Table: CURSO_CRITERIO
CREATE TABLE CURSO_CRITERIO (
    id_curso_criterio int  NOT NULL,
    id_curso char(5)  NOT NULL,
    id_criterio int  NOT NULL,
    CONSTRAINT CURSO_CRITERIO_pk PRIMARY KEY  (id_curso_criterio)
);

-- Table: ESTUDIANTE
CREATE TABLE ESTUDIANTE (
    id_estudiante char(5)  NOT NULL,
    nombre varchar(70)  NOT NULL,
    apellido varchar(70)  NOT NULL,
    documento_identidad varchar(11)  NOT NULL,
    direccion varchar(70)  NOT NULL,
    distrito varchar(70)  NOT NULL,
    fecha_nacimiento date  NOT NULL,
    email varchar(70)  NOT NULL,
    grado varchar(1)  NOT NULL,
    seccion varchar(1)  NOT NULL,
    nivel varchar(11)  NOT NULL,
    CONSTRAINT ESTUDIANTE_pk PRIMARY KEY  (id_estudiante)
);

-- Table: PROFESOR
CREATE TABLE PROFESOR (
    id_profesor char(5)  NOT NULL,
    nombre varchar(70)  NOT NULL,
    apellido varchar(70)  NOT NULL,
    documento_identidad char(8)  NOT NULL,
    direccion varchar(70)  NOT NULL,
    distrito varchar(70)  NOT NULL,
    fecha_nacimiento date  NOT NULL,
    celular char(9)  NOT NULL,
    email varchar(70)  NOT NULL,
    CONSTRAINT PROFESOR_pk PRIMARY KEY  (id_profesor)
);

-- Table: PROFESOR_CURSO
CREATE TABLE PROFESOR_CURSO (
    id_profesor_curso int  NOT NULL,
    id_profesor char(5)  NOT NULL,
    id_curso char(5)  NOT NULL,
    CONSTRAINT PROFESOR_CURSO_pk PRIMARY KEY  (id_profesor_curso)
);

-- foreign keys
-- Reference: ASIGNATURA_CURSO (table: PROFESOR_CURSO)
ALTER TABLE PROFESOR_CURSO ADD CONSTRAINT ASIGNATURA_CURSO
    FOREIGN KEY (id_curso)
    REFERENCES CURSO (id_curso);

-- Reference: ASIGNATURA_PROFESOR (table: PROFESOR_CURSO)
ALTER TABLE PROFESOR_CURSO ADD CONSTRAINT ASIGNATURA_PROFESOR
    FOREIGN KEY (id_profesor)
    REFERENCES PROFESOR (id_profesor);

-- Reference: CALIFICACION_CRITERIO (table: CALIFICACION)
ALTER TABLE CALIFICACION ADD CONSTRAINT CALIFICACION_CRITERIO
    FOREIGN KEY (id_criterio)
    REFERENCES CRITERIO (id_criterio);

-- Reference: CALIFICACION_CURSO (table: CALIFICACION)
ALTER TABLE CALIFICACION ADD CONSTRAINT CALIFICACION_CURSO
    FOREIGN KEY (id_curso)
    REFERENCES CURSO (id_curso);

-- Reference: CALIFICACION_ESTUDIANTE (table: CALIFICACION)
ALTER TABLE CALIFICACION ADD CONSTRAINT CALIFICACION_ESTUDIANTE
    FOREIGN KEY (id_estudiante)
    REFERENCES ESTUDIANTE (id_estudiante);

-- Reference: CALIFICACION_PROFESOR (table: CALIFICACION)
ALTER TABLE CALIFICACION ADD CONSTRAINT CALIFICACION_PROFESOR
    FOREIGN KEY (id_profesor)
    REFERENCES PROFESOR (id_profesor);

-- Reference: CURSO_CRITERIO_CRITERIO (table: CURSO_CRITERIO)
ALTER TABLE CURSO_CRITERIO ADD CONSTRAINT CURSO_CRITERIO_CRITERIO
    FOREIGN KEY (id_criterio)
    REFERENCES CRITERIO (id_criterio);

-- Reference: CURSO_CRITERIO_CURSO (table: CURSO_CRITERIO)
ALTER TABLE CURSO_CRITERIO ADD CONSTRAINT CURSO_CRITERIO_CURSO
    FOREIGN KEY (id_curso)
    REFERENCES CURSO (id_curso);

-- End of file.

