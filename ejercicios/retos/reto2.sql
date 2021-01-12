--obtener la segunta mitad de latabla alumnos
--primer intento
SELECT *
FROM (
        SELECT row_number() over() AS row_id, *
        FROM platzi.alumnos
    ) AS alumnos_with_row_numer
WHERE row_id >= (
        SELECT count(*) / 2 AS mitad
        FROM platzi.alumnos
    );

--forma 2
SELECT *
FROM platzi.alumnos
OFFSET (
        SELECT count(*) / 2 AS mitad
        FROM platzi.alumnos
    )-1;

--forma 3
SELECT row_number() over() AS row_id, *
FROM platzi.alumnos