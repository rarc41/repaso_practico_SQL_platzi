--obtener el promedio de alumnos por tutor
SELECT avg(alumnos_asignados) AS promedio_alumnos_tutor
FROM (
        SELECT concat(t.nombre, ' ', t.apellido) AS tutor,
            count(*) AS alumnos_asignados
        FROM platzi.alumnos AS a
            INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id
        GROUP BY tutor
        ORDER BY alumnos_asignados
) as alumnos_por_tutor
