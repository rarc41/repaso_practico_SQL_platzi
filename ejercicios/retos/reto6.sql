--Borrando duplicados

DELETE FROM platzi.alumnos
WHERE id IN (
        SELECT id
        FROM (
                SELECT *
                FROM (
                        SELECT 
                                row_number() over(
                                PARTITION by nombre,
                                apellido,
                                email,
                                colegiatura,
                                carrera_id,
                                tutor_id
                                ORDER BY id ASC
                            ) AS ROW,
                            *
                        FROM platzi.alumnos
                    ) AS duplicados
                WHERE duplicados.row > 1
            ) as duplicates_id
    );



