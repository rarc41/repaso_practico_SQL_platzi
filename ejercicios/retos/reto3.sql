--traes los registros que NO se encuentren en el subset de datos de
SELECT *
FROM (
        SELECT ROW_NUMBER() OVER() AS row_id,*
        FROM platzi.alumnos
    ) AS alumno_with_row_number
WHERE row_id NOT IN(1, 5, 10, 15);

SELECT *
FROM platzi.alumnos
WHERE id NOT IN (
        SELECT id
        FROM platzi.alumnos
        WHERE tutor_id = 30
    )