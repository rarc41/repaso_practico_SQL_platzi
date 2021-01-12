select *,
        avg(colegiatura) over(partition by carrera_id)
from platzi.alumnos;

select *,
        sum(colegiatura) over(partition by carrera_id order by colegiatura)
from platzi.alumnos;

select *,
        rank() over(partition by carrera_id order by colegiatura desc) as brand_rank
from platzi.alumnos
order by carrera_id, brand_rank;

select *
from (
    select *,
    rank() over(partition by carrera_id order by colegiatura desc) as brand_rank
    from platzi.alumnos
)as alumnos_rank_colegiatura
where brand_rank < 3
order by brand_rank;
