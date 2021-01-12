--encontrar duplicados en una tabla
select *
from platzi.alumnos as ou
where (
    select count(*)
    from platzi.alumnos as inr
    where ou.id=inr.id
) > 1;

select (platzi.alumnos.nombre,
        platzi.alumnos.apellido,
        platzi.alumnos.email,
        platzi.alumnos.colegiatura,
        platzi.alumnos.fecha_incorporacion,
        platzi.alumnos.carrera_id,
        platzi.alumnos.tutor_id)::text, count(*) as cantidad
from platzi.alumnos
group by (platzi.alumnos.nombre,
        platzi.alumnos.apellido,
        platzi.alumnos.email,
        platzi.alumnos.colegiatura,
        platzi.alumnos.fecha_incorporacion,
        platzi.alumnos.carrera_id,
        platzi.alumnos.tutor_id)
having count(*)>1;

select *
from (
    select id,
    row_number() over(
        partition by
            nombre,
            apellido,
            email,
            colegiatura,
            carrera_id,
            tutor_id
        order by id asc
    ) as row,
    *
    from platzi.alumnos 
) as duplicados
where duplicados.row>1
