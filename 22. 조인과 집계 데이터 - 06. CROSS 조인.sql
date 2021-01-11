CREATE TABLE CROSS_T1
(
    LABEL CHAR(1) PRIMARY KEY
);

CREATE TABLE CROSS_T2
(
    SCORE INT PRIMARY KEY
);

INSERT INTO CROSS_T1 (LABEL)
VALUES ('A'),
       ('B');

COMMIT;

INSERT INTO CROSS_T2 (SCORE)
VALUES (1),
       (2),
       (3);

COMMIT;

SELECT *
FROM CROSS_T1
         CROSS JOIN CROSS_T2
ORDER BY LABEL;

-- A,1
-- A,2
-- A,3
-- B,1
-- B,2
-- B,3

SELECT *
FROM CROSS_T1,
     CROSS_T2
ORDER BY LABEL; -- inner 조인을 표현하는 다른방법

-- 위 2개의 sql문 결과 집합이 동일 -> 같은 sql문이다.
-- 정보가 같다면 sql문 자체는 다르더라도 동일한 sql문이다.

SELECT LABEL,
CASE WHEN LABEL = 'A' THEN SUM(SCORE)
     WHEN LABEL = 'B' THEN SUM(SCORE) * -1
     ELSE 0
     END AS CALC
FROM CROSS_T1
         CROSS JOIN CROSS_T2
GROUP BY LABEL
ORDER BY LABEL;

-- A,6
-- B,-6



