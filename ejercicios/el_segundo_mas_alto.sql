--obtener el segundo mas alto de la tabla

--froma 1
SELECT DISTINCT colegiatura
FROM platzi.alumnos AS a1
WHERE 2 =(
        SELECT count(DISTINCT colegiatura)
        FROM Platzi.alumnos a2
        WHERE a1.colegiatura <= a2.colegiatura
    );
--forma2
select distinct colegiatura
from platzi.alumnos
order by colegiatura desc
offset 1
limit 1;

--forma3

select *
from platzi.alumnos as datos_alumnos
inner join(
    select distinct colegiatura
    from platzi.alumnos
    where tutor_id=20
    order by colegiatura desc limit 1 offset 1
) as segunda_mayor_colegiatura
on datos_alumnos.colegiatura = segunda_mayor_colegiatura.colegiatura;

--forma4
select *
from platzi.alumnos as datos_alumnos
where colegiatura = (
    select distinct colegiatura
    from platzi.alumnos
    where tutor_id=20
    order by colegiatura desc
    limit 1 offset 1
) and tutor_id=20;