--minimo nombre de toda la table

SELECT min(nombre)
from platzi.alumnos;


--minimo nombre por cada tutor_id
select tutor_id, min(nombre)
from platzi.alumnos
group by tutor_id
order by tutor_id;
