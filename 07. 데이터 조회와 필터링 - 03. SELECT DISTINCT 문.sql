-- DROP TABLE T1;
-- CREATE TABLE T1 ( ID SERIAL NOT NULL PRIMARY KEY, BCOLOR VARCHAR, FCOLOR VARCHAR );

/*
INSERT
INTO T1(BCOLOR, FCOLOR)
VALUES ('red', 'red')
     , ('red', 'red')
     , ('red', NULL)
     , (NULL, 'red')
     , ('red', 'green')
     , ('red', 'blue')
     , ('green', 'red')
     , ('green', 'blue')
     , ('green', 'green')
     , ('blue', 'red')
     , ('blue', 'green')
     , ('blue', 'blue')
;
*/

-- COMMIT;

select * from t1;

select distinct bcolor from t1 order by bcolor;

select distinct bcolor, fcolor from t1 order by bcolor, fcolor;

select distinct on (bcolor) bcolor, fcolor from t1 order by bcolor, fcolor;

select distinct on (bcolor) bcolor, fcolor from t1 order by bcolor, fcolor desc;