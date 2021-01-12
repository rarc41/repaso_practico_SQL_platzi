select a.nombre,
        a.apellido,
        a.carrera_id,
        c.id,
        c.carrera
from platzi.alumnos as a
    full outer join platzi.carreras as c
    on a.carrera_id = c.id
order by a.carrera_id;