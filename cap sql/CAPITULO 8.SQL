


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

