


SELECT DISTINCT a.nome,a.cep
FROM taluno a
ORDER BY nome;

SELECT cod_aluno c�digo, nome AS aluno
FROM taluno;

SELECT  cod_aluno ||' - '|| nome AS "Aluno"
FROM taluno;
SELECT * FROM taluno