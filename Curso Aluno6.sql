


SELECT * FROM taluno
WHERE COD_ALUNO =6;


SELECT Concat (COD_ALUNO,NOME) FROM TALUNO;

SELECT InitCap (NOME) FROM TALUNO;

SELECT InStr (NOME,'R')FROM TALUNO;

SELECT Length (NOME) FROM TALUNO; --- conta a quantidade de caracteres --

SELECT Lower (nome) FROM taluno;  --- todos os caracteres minusculos --

SELECT nome, Upper (nome) FROM taluno;

SELECT Upper ('Felipe Santos das Neves') FROM dual;


SELECT Lower ('Felipe Santos das Neves') FROM dual;

                             -- ACRECENTA CARACTERES A ESQUERDA ---
SELECT COD_ALUNO, LPad(COD_ALUNO,5,'0') FROM TALUNO;
SELECT COD_ALUNO, RPad(COD_ALUNO,5,'0') FROM TALUNO;

SELECT cod_aluno, InitCap (nome), salario, RPad(salario,8,'0,0') FROM TALUNO;


-- COPIA PARTE DE UM TEXTO ---
SELECT  NOME , SubStr (NOME,1,1) FROM TALUNO;

 --- SUBSTR (CAMPO / TEXTO , POSIÇÃO , QTD DE CARACTER)
     ------------------------------------------------------
 SELECT REPLACE ( NOME ,'R', '$') FROM TALUNO;

SELECT SubStr (SALARIO, Length(SALARIO),1) FROM TALUNO;


SELECT  SubStr (NOME,Length(NOME)-1,2)FROM TALUNO; -- TROUXE OS ULTIMOS CARACTERES DO CAMPO NOME--



SELECT * FROM taluno
WHERE Lower (nome) = 'felipe';


SELECT * FROM taluno
WHERE upper (nome) = 'FELIPE';


SELECT * FROM taluno
WHERE Upper(SubStr (cidade,1,3)) = 'OLI';

UPDATE taluno SET
salario = 633.47
WHERE cod_aluno =1;


SELECT
SALARIO,
REPLACE (SALARIO,',',''),
RPad (SALARIO, 10,'0'),
LPad (SALARIO, 10,'0'),
LPad (REPLACE(SALARIO,',',''),10,'0')
FROM TALUNO;

SELECT * FROM DUAL;

----- round e trunc --------

SELECT Round (45.925,2),
        Trunc (45.929,2),
        Mod(10,2) AS Resto_divisao,
        Trunc(1.99),
        Trunc(1.99, 2)
        FROM dual;


SELECT *FROM TCONTRATO;

------somando horas em uma data ---------

SELECT DATA, SYSDATE, DATA + 5 FROM TCONTRATO;

------------------- somar minutos ------------
SELECT SYSDATE - DATA AS DIF_DIAS  FROM TCONTRATO;


SELECT Trunc (SYSDATE - DATA) AS DIAS FROM TCONTRATO;



SELECT SYSDATE +2 /24 AS ADD_HORAS FROM TCONTRATO;

SELECT SYSDATE +15 /1440  AS ADD_MINUTOS FROM TCONTRATO;

SELECT SYSDATE +30 /(3600*24) AS ADD_SEGUNDOS FROM TCONTRATO;


------ HORA FICA 00:00:00 UTILIZANDO TRUNC;
SELECT Trunc (SYSDATE) FROM DUAL;

---- DIFERENÇA  DE MESES ENTRE DATAS ----
SELECT SYSDATE, Months_BETWEEN(SYSDATE, SYSDATE - 90) AS DIF_MES FROM DUAL;

SELECT Add_Months (SYSDATE, 5) AS ADICIONA_MES_DATA FROM DUAL;

SELECT Next_Day(SYSDATE, 'Wednesday') AS PROXIMA_TERCA_DATA FROM DUAL; --- tive que colocar o dia da semana em imgles --


---- ultimo dia do mês
SELECT Last_Day(SYSDATE) AS ULTIMO_DIA_MES FROM DUAL;


---- primeiro dia do proximo mes
---- ate dia 15 do mes pega o primeiro dia do mes atual
---- a partir do dia 16 retorna o primeiro dia do proximo mes

SELECT  Round (SYSDATE, 'MONTH') AS PRIMEIRO_DIA_PROXIMO_MES FROM DUAL;

--- primeiro dia do mes

SELECT  TRUNC(SYSDATE,'MONTH') AS PRIMEIRO_DIA_MES_CORRENTE FROM DUAL;


--- FORMATAÇÃO DE DATA ---
 SELECT To_Char(SYSDATE,'DD/MM/YYYY')DATA FROM DUAL; -- DATA COMPLETA SEM HORA

 SELECT To_Char (SYSDATE, 'DD/MM') DIA_MES FROM DUAL;-- DIA E MES SEM HORA

 SELECT To_Char (SYSDATE, 'DD') DIA FROM DUAL; -- DIA

 SELECT To_Char ( SYSDATE, 'MM') MES FROM DUAL;-- MES

 SELECT To_Char (SYSDATE, 'YY') ANO FROM DUAL; -- ANO

 ---
 SELECT To_Char(SYSDATE,'MONTH') MES1 FROM DUAL;

 ----

 SELECT To_Char (SYSDATE, 'D') DIA_SEMANA FROM DUAL;


 SELECT To_Char (SYSDATE, 'DY') DIA_SEMANA FROM DUAL;


 SELECT To_Char (SYSDATE, 'DAY') DIA_SEMANA FROM DUAL;


 SELECT To_Char (SYSDATE, 'DAY/MONTH/YEAR') DIA_SEMANA FROM DUAL;


 SELECT To_Char(SYSDATE,'"NOVO HAMBURGO", fmDAY "," DD "de" fmMonth "de" YYYY') AS data_por_extenso FROM DUAL;





SELECT
CASE
WHEN To_Char (SYSDATE, 'DO') > 16 THEN Round (SYSDATE,'MONTH')
ELSE Round(Add_Months(SYSDATE,1),'MONTH')
END AS pri_dia_prox_mes
FROM DUAL;

















