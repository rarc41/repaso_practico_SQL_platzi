--froma 1
SELECT *
FROM platzi.alumnos
WHERE (
        extract(year FROM fecha_incorporacion
        )
    ) = 2018;

--froma2
SELECT *
FROM platzi.alumnos
WHERE date_part('year', fecha_incorporacion) = 2019;

--froma3

SELECT *
FROM (
        SELECT *,
            date_part('year', fecha_incorporacion) AS anio_incorporacion
        FROM platzi.alumnos
    ) AS alumnos_wuth_anios
WHERE anio_incorporacion = 2019;