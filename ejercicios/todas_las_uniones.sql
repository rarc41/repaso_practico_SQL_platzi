SELECT a.nombre,
    a.apellido,
    a.carrera_id,
    c.id,
    c.carrera
FROM platzi.alumnos AS a
    LEFT JOIN platzi.carreras AS c ON a.carrera_id = c.id
WHERE c.id IS NULL;

SELECT a.nombre,
    a.apellido,
    a.carrera_id,
    c.id,
    c.carrera
FROM platzi.alumnos AS a
    RIGHT JOIN platzi.carreras AS c ON a.carrera_id = c.id
WHERE a.id IS NULL;

SELECT *
FROM platzi.alumnos AS a
    JOIN platzi.carreras AS c ON a.carrera_id = c.id
WHERE carrera LIKE '%computación%';

SELECT a.nombre,
    a.apellido,
    a.carrera_id,
    c.id,
    c.carrera
FROM platzi.alumnos AS a
    full outer JOIN platzi.carreras AS c ON a.carrera_id = c.id
WHERE a.id is NULl
    or c.id is null
;
