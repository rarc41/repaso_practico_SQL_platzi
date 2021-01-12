--reto: obtener los alumnos incoporados en mayo de 2018
--priemr intento:
SELECT *,
    date_part('year', fecha_incorporacion) AS anio,
    to_char(fecha_incorporacion, 'month') AS mes
FROM platzi.alumnos
WHERE date_part('year', fecha_incorporacion) = 2018
    AND date_part('month', fecha_incorporacion) = 05;

--otra forma:
SELECT *
from (
    SELECT *,
           date_part('year', fecha_incorporacion) AS anio,
           to_char(fecha_incorporacion, 'month') AS mes
    from platzi.alumnos
) as alumnos_ini_may_2018
where anio=2018 and mes='may';

--otra forma
select *
from platzi.alumnos
where date_part('year', fecha_incorporacion)=2018
    and  to_char(fecha_incorporacion, 'month') ='may'

--otra forma
SELECT *
    FROM platzi.alumnos
    WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2018
        AND (EXTRACT(MONTH FROM fecha_incorporacion)) = 05;

--otra forma
SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion)) = 2018 
AND (DATE_PART('MONTH', fecha_incorporacion)) = 05 ;