-- obtener los 5 primeros registros de la tabla
--primera forma
SELECT *
FROM platzi.alumnos
LIMIT 5;

--segunda formas
SELECT *
FROM (
        SELECT row_number() over() AS row_id,
            *
        FROM platzi.alumnos
    ) AS alumnos_with_row_number
WHERE row_id BETWEEN 1 AND 5;

--tercera forma
SELECT *
FROM platzi.alumnos
FETCH FIRST 5 ROWS ONLY;