SELECT *
FROM (
        --esta parte es la que se ejcuta primero (subquery)
        SELECT *,date_part('year', fecha_incorporacion) AS anio
        FROM platzi.alumnos
    ) as alumnos_with_anio
WHERE anio = 2020;  -- cuando se evalua esta parte, el campo anio ya existe, ps se creo en subquery

SELECT *,date_part('year', fecha_incorporacion) AS anio
FROM platzi.alumnos
where date_part('year', fecha_incorporacion)=2020;