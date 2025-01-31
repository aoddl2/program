SELECT *
FROM (
    SELECT A.ANIMAL_ID, A.NAME
    FROM ANIMAL_OUTS A
    LEFT OUTER JOIN ANIMAL_INS B
    ON A.ANIMAL_ID = B.ANIMAL_ID
    WHERE B.ANIMAL_ID IS NOT NULL
    ORDER BY A.DATETIME - B.DATETIME DESC)
WHERE ROWNUM <= 2