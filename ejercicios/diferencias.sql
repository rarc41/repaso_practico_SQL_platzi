--cantidad de alumno por carrera
select carrera_id, count(*) as cuenta
from platzi.alumnos
group by carrera_id
order by cuenta desc;

-- cantidad de alumno cuya carrera no existe, 
--busando alumnos huerfanos en carrera
select a.nombre,
        a.apellido,
        a.carrera_id,
        c.id,
        c.carrera
from platzi.alumnos as a
    left join platzi.carreras as c
    on a.carrera_id = c.id
where c.id is null
order by a.carrera_id;