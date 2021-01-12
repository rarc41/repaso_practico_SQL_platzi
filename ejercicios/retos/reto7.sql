select int4range(min(tutor_id), MAX(tutor_id)) * int4range(min(carrera_id), MAX(carrera_id))
from platzi.alumnos;


