


SELECT * FROM tdesconto

INSERT INTO tdesconto (classe, inferior, superior)
VALUES ('&cla','&inf','&sup');


SELECT * FROM


UPDATE tdesconto SET
CLASSE ='G'
WHERE CLASSE ='g';

UPDATE TDESCONTO SET
INFERIOR = '&INF',
SUPERIOR = '&SUP'
WHERE classe = '&cla';

DELETE FROM tdesconto
WHERE classe = '&cla';

----- copia de table atraves do select
CREATE TABLE tdesconto2
AS SELECT * FROM tdesconto

SELECT * FROM tdesconto2

COMMIT;

DELETE  FROM tdesconto2;

SELECT * FROM tdesconto2

ROLLBACK;

TRUNCATE TABLE tdesconto2;

 --- savepoint

 SAVEPOINT upd_b;


UPDATE TDESCONTO SET
SUPERIOR = '&SUP'
WHERE classe = '&cla';

 SAVEPOINT upd_a;

 UPDATE TDESCONTO SET
SUPERIOR = '&SUP'
WHERE classe = '&cla';

--- ponto de restauração --
SAVEPOINT ins_ok;

INSERT INTO tdesconto (classe, inferior,superior)
VALUES ('&cla', &inf,&sup);


SELECT * FROM tdesconto;

ROLLBACK TO SAVEPOINT ins_ok;
ROLLBACK TO SAVEPOINT upd_b;

DROP TABLE tdesconto2;

                      ALTER TABLE TEDESCONTOS

                      CLASSE VARCHAR2(2) NOT NULL;

                      DROP TABLE tdescontos;
CREATE TABLE TDESCONTOS
  (    CLASSE VARCHAR2(2) NOT NULL,
        BASE_INFERIOR NUMBER (7,2),
        BASE_SUPERIOR NUMBER (7,2));

        SELECT * FROM TDESCONTOS;

 SELECT * FROM USER_TABLES

 SELECT *FROM  USER_OBJECTS;

 CREATE TABLE TESTE
 ( CODIGO INTEGER NOT NULL PRIMARY KEY,
 DATA DATE DEFAULT SYSDATE
 );
      INSERT INTO TESTE (CODIGO)VALUES (1);

  SELECT * FROM TESTE;


