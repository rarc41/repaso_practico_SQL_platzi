/* select lpad('sql', 15, '*'); */

select lpad('*', id, '*')
from platzi.alumnos
where id<100
order by carrera_id;

select lpad('*', cast(row_id as int), '*')
from (
    select row_number() over(order by carrera_id) row_id, *
    from platzi.alumnos
) as alumnos_with_row_id
where row_id<=5
order by carrera_id