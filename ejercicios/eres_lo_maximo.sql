select fecha_incorporacion
from platzi.alumnos
order by fecha_incorporacion desc
limit 1;

select carrera_id, MAX(fecha_incorporacion) as fecha_reciente
from platzi.alumnos
group by carrera_id
order by fecha_reciente
