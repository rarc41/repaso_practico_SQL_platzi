-- funciones que debemos tener en nuestro cinturo de herramientas, cuando usemos SQL

--row_number(), nos da el numero de la tupla que estamos utilizando en ese momento.
--OVER([PARTITION BY column] [ORDER BY column DIR]): nos deja Particionar y Ordenar la window function.
--PARTITION BY(column/s): es un group by para la window function, se coloca dentro de OVER.
select row_number() over(order by fecha_incorporacion) as row_id, *
from platzi.alumnos;

--FIRST_VALUE(column): devuelve el primer valor de una serie de datos.
select first_value(colegiatura) over() as primera_colegitura, *
from platzi.alumnos;

select first_value(colegiatura) over(PARTITION by carrera_id) as primera_colegitura, *
from platzi.alumnos;

--LAST_VALUE(column): Devuelve el ultimo valor de una serie de datos.
select last_value(colegiatura) over(PARTITION by carrera_id) as primera_colegitura, *
from platzi.alumnos;

/* --NTH_VALUE(column, row_number): Recibe la columna y el numero de row que
queremos devolver de una serie de datos */
select NTH_VALUE(colegiatura, 4) over(PARTITION by carrera_id) as primera_colegitura, *
from platzi.alumnos;

--RANK(): nos dice el lugar que ocupa de acuerdo a el orden de cada tupla, deja gaps entre los valores
select *,
        rank() over(partition by carrera_id order by colegiatura desc) as colegiatura_rank
from platzi.alumnos
order by carrera_id, colegiatura_rank;

-- DENSE_RANK(): Es un rango mas denso que trata de eliminar los gaps que nos deja RANK.
select *,
        dense_rank() over(partition by carrera_id order by colegiatura desc) as colegiatura_rank
from platzi.alumnos
order by carrera_id, colegiatura_rank;

--PERCENT_RANK(): Categoriza de acuerdo a lugar que ocupa igual que los anteriores pero por porcentajes.
select *,
        percent_rank() over(partition by carrera_id order by colegiatura desc) as colegiatura_rank
from platzi.alumnos
order by carrera_id, colegiatura_rank;
