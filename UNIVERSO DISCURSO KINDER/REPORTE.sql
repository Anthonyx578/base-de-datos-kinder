-------------------------------REPORTE---------------------------------------------------------------------------------
/*- Reporte en ireport que muestre en un gráfico de torta cantidad de matriulas en actividades para un año lectivo 
determinado.*/
select EXTRACT(YEAR FROM M.ANIOELECTIVO) AS AÑO,A.NOMBREACTIVIDAD,COUNT(M.FK_ID_ACTIVIDAD) from MATRICULAACTIVIDAD M
INNER JOIN ACTIVIDAD A ON A.ID_ACTIVIDAD= M.FK_ID_ACTIVIDAD
WHERE EXTRACT(YEAR FROM M.ANIOELECTIVO)=2020
GROUP BY A.NOMBREACTIVIDAD,EXTRACT(YEAR FROM M.ANIOELECTIVO)
-----------------------------------------------------------------------------------------------------------------------