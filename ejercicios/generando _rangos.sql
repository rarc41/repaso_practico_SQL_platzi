SELECT *
from generate_series(3,6);

SELECT *
from generate_series(5,1,-1);

select *
from generate_series(1.1,4,1.3);

--sumando 7 dias a la fecha actual
select current_date + s.a as dates
from generate_series(0,14,7) as s(a);

select *
from generate_series('2020-09-01 00:00:00'::timestamp,
                     '2020-09-04 00:00:00', '10 hours');
--------------------------
select a.id,
        a.nombre,
        a.apellido,
        a.carrera_id,
        s.a
from platzi.alumnos as a
    join generate_series(0,10) as s(a)
    on s.a=a.carrera_id
order by carrera_id;