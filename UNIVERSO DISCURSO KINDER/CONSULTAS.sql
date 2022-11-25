------------------------------CONSULTAS------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
--------CONSULTA 1---------------------------------------------------------------------------------------------------------
/*
- Mostrar hist�rico de cantidad de profesores por a�o.
En una columna aparecer� el a�o lectivo, en otra columna aparecer� el n�mero de mujeres, 
en otra columna aparecer� el n�mero de hombres. */
SELECT EXTRACT(YEAR FROM PROFESORES.FECHADEINGRESO ) AS A�O,COUNT(CEDULAPROFESOR) AS NUM_PROFESORES,G.GENERO  
FROM PROFESORES
INNER JOIN GENERO G ON G.ID_GENERO=PROFESORES.FK_ID_GENERO
GROUP BY EXTRACT(YEAR FROM PROFESORES.FECHADEINGRESO ),G.GENERO
ORDER BY EXTRACT(YEAR FROM PROFESORES.FECHADEINGRESO ) ASC;
 -------------------------------------------------------------------------------------------------------------------------- 
--------CONSULTA 2---------------------------------------------------------------------------------------------------------
/*- Mostrar hist�rico de rendimiento por programas. 
En una columna debe aparecer el a�o lectivo, en otra columna el nombre del programa, 
en otra columna la cantidad de rendimientos buenos, en otra columna la cantidad de rendimientos regulares,
en otra columna la cantidad de rendimientos regulares.*/
SELECT EXTRACT(YEAR FROM MATRICULAACTIVIDAD.ANIOELECTIVO ) AS A�O,A.NOMBREACTIVIDAD,DESEMPENIO,COUNT(DESEMPENIO)AS NUM_DESEMPENIOS 
FROM MATRICULAACTIVIDAD
INNER JOIN ACTIVIDAD A ON A.ID_ACTIVIDAD=MATRICULAACTIVIDAD.FK_ID_ACTIVIDAD 
GROUP BY DESEMPENIO,EXTRACT(YEAR FROM MATRICULAACTIVIDAD.ANIOELECTIVO ),A.NOMBREACTIVIDAD
ORDER BY EXTRACT(YEAR FROM MATRICULAACTIVIDAD.ANIOELECTIVO ) ASC;
---------------------------------------------------------------------------------------------------------------------------
---------consulta 3--------------------------------------------------------------------------------------------------------
/*MOSTRAR UNA CONSULTA EN LA QUE SALGAN: EN UNA COLUMNA LOS NOMBRES DEL NI�O ,SU CEDULA,SU EDAD Y SU GENERO,ADEMAS QUE SE MUESTREN
LOS DATOS DE SU PADRE REGISTRADO SEAN ESTOS: NOMBRES DIRECCION TELEFONO Y TELEFONO DEL DOMICILIO*/
---------------------------------------------------------------------------------------------------------------------------
SELECT NINIO.CEDULANINIO,NINIO.NOMBRES||' '||NINIO.APELLIDOS AS NOMBRESNINIO, G.GENERO,NINIO.EDAD,P.NOMBRES||' '||P.APELLIDOS AS NOMBRESPADRE,
P.DIRECCION,P.TELEFONO,P.TELEFONODOMICILIO
FROM NINIO
INNER JOIN PADRE P ON P.CEDULAPADRE = NINIO.FK_CEDULAPADRE
INNER JOIN GENERO G ON G.ID_GENERO = NINIO.FK_ID_GENERO
ORDER BY NINIO.CEDULANINIO ASC; 
---------------------------------------------------------------------------------------------------------------------------