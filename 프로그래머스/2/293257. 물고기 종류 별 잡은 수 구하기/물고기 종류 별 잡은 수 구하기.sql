SELECT COUNT(ID) AS FISH_COUNT, FISH_NAME
FROM FISH_INFO NATURAL JOIN FISH_NAME_INFO
GROUP BY FISH_NAME
ORDER BY 1 DESC