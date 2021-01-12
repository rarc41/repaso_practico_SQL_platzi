SELECT *
FROM (
    SELECT ROW_NUMBER() OVER() AS row_id, *
    from platzi.alumnos
) as alumno_with_row_number
where row_id IN(1, 5, 10, 15);

SELECT *
from platzi.alumnos
where id in (
    select id from platzi.alumnos
    where tutor_id=30
)