/*1. Obtener los nombres y notas de los estudiantes, así como el resultado de su solicitud, de manera que
tengan un valor de corrección menor que 1000 y hayan solicitado la vía de “Tecnología” en el “Instituto
Ramiro de Maeztu”.*/
select e.nombre, e.puntos_acceso, s.decision
from estudiantes e, solicitudes s
where e.identificador = s.id_estudiante and e.valor_corr < 1000 and s.via_solicitud like 'Tecnologia' and s.nom_instituto like 'Insitituto Rameru de Maeztu';

/*2. Obtener la información sobre todas las solicitudes: ID y nombre del estudiante, nombre del instituto,
puntos y plazas, ordenadas de forma decreciente por los puntos y en orden creciente de plazas.*/
select distinct s.id_estudiante, e.nombre, s.nom_instituto, e.puntos_acceso, i.max_plazas
from solicitudes s, estudiantes e, institutos i
where s.id_estudiante = e.identificador and i.nombre = s.nom_instituto
order by e.puntos_acceso desc, i.max_plazas asc;

/*3. Obtener todas las solicitudes a vías denominadas como “Ciencias” o “Ciencias Sociales”.*/
select *
from solicitudes
where via_solicitud in ('Ciencias', 'Ciencias Sociales');
select *
from solicitudes
where via_solicitud like '%Ciencias%';

/*4. Obtener los estudiantes cuya puntuación ponderada cambia en más de un punto respecto a la
puntuación original.*/
select identificador, nombre, puntos_acceso, puntos_acceso*(valor_corr/1000.0) as ponderada
from estudiantes
where abs(ponderada) > 1.0;

/*5. Borrar a todos los estudiantes que solicitaron más de 2 vías diferentes.*/
delete from solicitudes
where id_estudiante in (
    select id_estudiante
    from solicitudes
    group by id_estudiante
    having count(distinct via_solicitud) > 2
);

/*6. Obtener las vías en las que la puntuación máxima de las solicitudes está por debajo de la media.*/
select s.via_solicitud, e.puntos_acceso
from solicitudes s, estudiantes e
where s.id_estudiante = e.identificador
group by s.via_solicitud
having max(e.puntos_acceso) < (select avg(puntos_acceso) from estudiantes);

/*7. Obtener los nombres de los estudiantes y las vías que han solicitado.*/
select distinct e.nombre, s.via_solicitud
from estudiantes e, solicitudes s
where s.id_estudiante = e.identificador;

/*8. Obtener el nombre de los estudiantes y la puntuación con valor de ponderación menor de 1000 que
hayan solicitado la vía de “Tecnología” en el “Instituto San Isidro”.*/
select e.nombre, e.puntos_acceso
from estudiantes e
join solicitudes on e.identificador = solicitudes.id_estudiante and e.valor_corr < 1000 and solicitudes.via_solicitud = 'Tecnologia' and solicitudes.nom_instituto = 'Instituto San Isidro';

select sum(valor_corr) from estudiantes where identificador in (123, 234) group by identificador;
