

SELECT * FROM TCONTRATO;

--- NVL E NVL2 -- -
  SELECT TOTAL,
        DESCONTO,
        DESCONTO+TOTAL,
        Nvl(DESCONTO,0),
        Nvl(DESCONTO,0) +TOTAL,
        Nvl2 (DESCONTO, TOTAL,-1)
  FROM TCONTRATO;


        UPDATE TALUNO SET NOME = NULL WHERE
        COD_ALUNO = 5;

        SELECT  * FROM TALUNO;

        SELECT COD_ALUNO, Nvl (NOME, 'SEM NOME')
        FROM TALUNO;

        SELECT * FROM TALUNO;

        UPDATE TALUNO SET
        ESTADO = 'AC'
        WHERE COD_ALUNO=2;

        SELECT * FROM TALUNO
        WHERE COD_ALUNO=2;

        SELECT nome ||' '|| sobrenome AS NOME_COMPLETO FROM taluno;