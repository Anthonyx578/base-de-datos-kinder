 ----------------------------------------------------------------------------------------------------------------------
 ---------------------------------CURSOR-------------------------------------------------------------------------------
 ---activar salida de consola--------------------------------------------------------------------------------
SET serveroutput ON;
-------------------------------------------------------------------------------------------------------------
DECLARE
CURSOR MATRICULACIONES_ANIO IS
SELECT EXTRACT(YEAR FROM M.ANIOELECTIVO ) AS AÑO,A.NOMBREACTIVIDAD,COUNT(CEDULANINIO) AS NUM_MATRICULACIONES,G.GENERO FROM NINIO 
INNER JOIN MATRICULAACTIVIDAD M ON M.FK_CEDULANINIO = CEDULANINIO
INNER JOIN GENERO G ON G.ID_GENERO = FK_ID_GENERO
INNER JOIN ACTIVIDAD A ON M.FK_ID_ACTIVIDAD= A.ID_ACTIVIDAD
GROUP BY M.ANIOELECTIVO, EXTRACT(YEAR FROM M.ANIOELECTIVO ),G.GENERO,A.NOMBREACTIVIDAD
ORDER BY EXTRACT(YEAR FROM M.ANIOELECTIVO ) ASC; 
BEGIN 
 FOR MATRICULAS IN MATRICULACIONES_ANIO LOOP
    DBMS_OUTPUT.put_line ('EN EL AÑO:'||MATRICULAS.AÑO||' SE MATRICUALARON:'||MATRICULAS.NUM_MATRICULACIONES||' ESTUDIANTES '||MATRICULAS.GENERO||
    ' EN LA ACTIVIDAD: '||MATRICULAS.NOMBREACTIVIDAD);  
 END LOOP;
END;
---------------------------------------------------------------------------------------------------------------------------