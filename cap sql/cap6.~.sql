


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
