select *
from platzi.alumnos
where tutor_id in (1,2,3,4);

select *
from platzi.alumnos
where tutor_id >=1 and tutor_id<=10;

select int4range(10,20) @>3;

select numrange(11.1, 22.2) && numrange(20.0, 30.0);

select upper(int8range(15, 25));

select int4range(10, 20) * int4range(15, 25);

select isempty(numrange(1,5));

select *
from platzi.alumnos
where int4range(10, 20) @> tutor_id;

