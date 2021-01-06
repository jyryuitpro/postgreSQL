SELECT A.ID ID_A, A.FRUIT FRUIT_A, B.ID ID_B, B.FRUIT FRUIT_B
FROM BASKET_A A
         LEFT JOIN BASKET_B B ON A.FRUIT = B.FRUIT;

-- LEFT ONLY
SELECT A.ID ID_A, A.FRUIT FRUIT_A, B.ID ID_B, B.FRUIT FRUIT_B
FROM BASKET_A A
         LEFT JOIN BASKET_B B ON A.FRUIT = B.FRUIT
WHERE B.ID IS NULL;

SELECT A.ID ID_A, A.FRUIT FRUIT_A, B.ID ID_B, B.FRUIT FRUIT_B
FROM BASKET_A A
         RIGHT JOIN BASKET_B B ON A.FRUIT = B.FRUIT;

-- RIGHT ONLY
SELECT A.ID ID_A, A.FRUIT FRUIT_A, B.ID ID_B, B.FRUIT FRUIT_B
FROM BASKET_A A
         RIGHT JOIN BASKET_B B ON A.FRUIT = B.FRUIT
WHERE A.ID IS NULL;