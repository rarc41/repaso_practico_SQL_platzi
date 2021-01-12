--que estudiantes son tutores de otros estudiantes
SELECT a.tutor_id,
    concat(a.nombre, ' ', a.apellido) AS alumno, t.id,
    concat(t.nombre, t.apellido) AS tutor
FROM platzi.alumnos AS a
    INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id;

--contando cuantos alumnos tiene asignado cada tutor
SELECT t.id,
    concat(t.nombre, ' ', t.apellido) AS tutor,
    count(*) AS alumnos
FROM platzi.alumnos AS a
    JOIN platzi.alumnos AS t ON a.tutor_id = t.id
GROUP BY t.id, tutor;

SELECT concat(t.nombre, ' ', t.apellido) AS tutor,
    count(*) AS alumnos_asignados
FROM platzi.alumnos AS a
    INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_asignados;