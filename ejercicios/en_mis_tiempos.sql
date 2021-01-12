select extract(year from fecha_incorporacion) as anio_incorporacion
from platzi.alumnos;

select date_part('year', fecha_incorporacion) as anio_incorporacion
from platzi.alumnos;

select date_part('year', fecha_incorporacion) as anio_incorporacion,
        date_part('month', fecha_incorporacion) as mes_incorporacion,
        date_part('day', fecha_incorporacion) as dia_incorporacion
from platzi.alumnos;