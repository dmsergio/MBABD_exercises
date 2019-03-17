CREATE TABLE estudiantes (
    identificador integer,
    nombre CHAR (30) not null,
    puntos_acceso real,
    valor_corr integer,
    PRIMARY KEY (
        identificador
    )
);

create table institutos (
    nombre char(20),
    area_ciudad char(35),
    max_plazas integer,
    primary key (
        nombre
    )
);

create table solicitudes (
    id_estudiante integer,
    nom_instituto char(20),
    via_solicitud char(20),
    decision char(30),
    primary key (id_estudiante, nom_instituto, via_solicitud),
    foreign key (id_estudiante) references estudiantes (identificador),
    foreign key (nom_instituto) references institutos (nombre)
);

insert into institutos (nombre, area_ciudad, max_plazas)
values
    ('Insitituto San Isidro', 'Centro', 150),
    ('Insitituto Rameru de Maeztu', 'Salamanca', 360),
    ('Insitituto Arturo Soria', 'Hortaleza', 100),
    ('Insitituto Torres Quevedo', 'Moncloa', 210);

insert into estudiantes (identificador, nombre, puntos_acceso, valor_corr)
values
    (123, 'Antonio', 8.9, 1000),
    (234, 'Juan', 8.6, 1500),
    (345, 'Isabel', 8.5, 500),
    (456, 'Doris', 7.9, 1000),
    (543, 'Pedro', 5.4, 2000),
    (567, 'Eduardo', 6.9, 2000),
    (654, 'Alfonso', 7.9, 1000),
    (678, 'Carmen', 5.8, 200),
    (765, 'Javier', 7.9, 1500),
    (789, 'Isidro', 8.4, 800),
    (876, 'Irene', 6.9, 400),
    (987, 'Elena', 6.7, 800);

insert into solicitudes (id_estudiante, nom_instituto, via_solicitud, decision)
values
    (123, 'Insitituto Rameru de Maeztu', 'Tecnologia', 'Si'),
    (123, 'Insitituto Rameru de Maeztu', 'Ciencias Sociales', 'No'),
    (123, 'Insitituto San Isidro', 'Tecnologia', 'Si'),
    (123, 'Insitituto Torres Quevedo', 'Ciencias Sociales', 'Si'),
    (234, 'Insitituto San Isidro', 'Ciencias', 'No'),
    (345, 'Insitituto Arturo Soria', 'Tecnologia', 'Si'),
    (345, 'Insitituto Torres Quevedo', 'Tecnologia', 'No'),
    (345, 'Insitituto Torres Quevedo', 'Ciencias', 'Si'),
    (345, 'Insitituto Torres Quevedo', 'Ciencias Sociales', 'No'),
    (678, 'Insitituto Rameru de Maeztu', 'Ciencias Sociales', 'Si'),
    (987, 'Insitituto Rameru de Maeztu', 'Tecnologia', 'Si'),
    (987, 'Insitituto San Isidro', 'Tecnologia', 'Si'),
    (876, 'Insitituto Rameru de Maeztu', 'Tecnologia', 'No'),
    (876, 'Insitituto Arturo Soria', 'Ciencias', 'Si'),
    (876, 'Insitituto Arturo Soria', 'Ciencias Sociales', 'No'),
    (765, 'Insitituto Rameru de Maeztu', 'Ciencias Sociales', 'Si'),
    (765, 'Insitituto Torres Quevedo', 'Ciencias Sociales', 'No'),
    (765, 'Insitituto Torres Quevedo', 'Ciencias', 'Si'),
    (543, 'Insitituto Arturo Soria', 'Tecnologia', 'No');
