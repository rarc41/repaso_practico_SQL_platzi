SELECT lpad('*', s.a, '*')
FROM generate_series(0, 200) AS s(a);

select lpad('*', cast(ordinality as int), '*')
from generate_series(10,2,-2) with ordinality;



