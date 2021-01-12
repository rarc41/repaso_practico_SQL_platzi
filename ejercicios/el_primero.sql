--obtener el primer registro de la tabla seleccionada

--primera forma
SELECT *
FROM platzi.alumnos
LIMIT 1;
-- segunda forma
SELECT *
FROM platzi.alumnos,
    platzi.carreras
FETCH FIRST 1 ROWS ONLY;
--tercera forma
SELECT *
FROM (
        SELECT row_number() over() AS row_id,*
        FROM platzi.alumnos
    ) AS alumnos_with_row_number
    WHERE  row_id = 1;