-- INNER 조인 특정 컬럼을 기준으로 정확히 매칭된 집합을 출력한다.
-- OUTER 조인 특정 컬럼을 기준으로 매칭된 집합을 출력하지만 한쪽의 집합은 모두 출력하고 다른 한쪽의 집합은 매칭되는 컬럼의 값 만을 출력한다. (LEFT, RIGHT)
-- SELF 조인 동일한 테이블 끼리 의 특정 컬럼을 기준으로 매칭되는 집합을 출력한다.
-- FULL OUTER 조인 INNER, LEFT OUTER, RIGHT OUTER 조인 집합을 모두 출력한다.
-- CROSS 조인 Cartesian Product이라고도 하며 조인되는 두 테이블에서 곱집합을 반환한다.
-- NATURAL 조인 특정 테이블의 같은 이름을 가진 컬럼 간의 조인집합을 출력한다.

CREATE TABLE BASKET_A
(
    ID    INT PRIMARY KEY,
    FRUIT VARCHAR(100) NOT NULL
);

SELECT * FROM BASKET_A;

CREATE TABLE BASKET_B
(
    ID    INT PRIMARY KEY,
    FRUIT VARCHAR(100) NOT NULL
);

SELECT * FROM BASKET_B;

INSERT INTO BASKET_A (ID, FRUIT)
VALUES (1, 'Apple'),
       (2, 'Orange'),
       (3, 'Banana'),
       (4, 'Cucumber');
COMMIT;

INSERT INTO BASKET_B (ID, FRUIT)
VALUES (1, 'Orange'),
       (2, 'Apple'),
       (3, 'Watermelon'),
       (4, 'Pear');
COMMIT;

-- INSERT, UPDATE, DELETE -> 데이터의 삽입 및 갱신 -> COMMIT, ROLLBACK -> 트랜잭션 처리