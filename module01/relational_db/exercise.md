Considérese una base de datos para gestionar las solicitudes de acceso de estudiantes a los institutos. La
información que se desea almacenar es:

* **Sobre los institutos**: nombre, área de la ciudad donde se encuentra y número máximo de plazas.

* **Sobre los estudiantes**: identificador de estudiante, nombre, puntos que tiene para acceder y un valor de
corrección.

* **Sobre las solicitudes**: identificador de estudiante, nombre del instituto, vía solicitada y decisión sobre la
solicitud.

**Consutas a realizar**:
1. Obtener los nombres y notas de los estudiantes, así como el resultado de su solicitud, de manera que
tengan un valor de corrección menor que 1000 y hayan solicitado la vía de “Tecnología” en el “Instituto
Ramiro de Maeztu”.
2. Obtener la información sobre todas las solicitudes: ID y nombre del estudiante, nombre del instituto,
puntos y plazas, ordenadas de forma decreciente por los puntos y en orden creciente de plazas.
3. Obtener todas las solicitudes a vías denominadas como “Ciencias” o “Ciencias Sociales”.
4. Obtener los estudiantes cuya puntuación ponderada cambia en más de un punto respecto a la
puntuación original.
5. Borrar a todos los estudiantes que solicitaron más de 2 vías diferentes.
6. Obtener las vías en las que la puntuación máxima de las solicitudes está por debajo de la media.
7. Obtener los nombres de los estudiantes y las vías que han solicitado.
8. Obtener el nombre de los estudiantes y la puntuación con valor de ponderación menor de 1000 que
hayan solicitado la vía de “Tecnología” en el “Instituto San Isidro”.
