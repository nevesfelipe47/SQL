

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

        SELECT  * FROM TALUNO
        WHERE COD_ALUNO= 5;

        SELECT  * FROM TALUNO
        WHERE NOME IS NULL;   ---- PARA TRAZER APENAS NULL'S DA TABLE ---

        SELECT  * FROM TALUNO

        SELECT COD_ALUNO, Nvl (NOME, 'SEM NOME')AS NOME_ALUNO
        FROM TALUNO;

        SELECT * FROM TALUNO;

        UPDATE TALUNO SET
        ESTADO = 'AC'
        WHERE COD_ALUNO=2;

        UPDATE TALUNO SET
        ESTADO ='SC'
        WHERE COD_ALUNO= 4;


        UPDATE TALUNO SET
        ESTADO ='RJ'
        WHERE COD_ALUNO= 5;

        SELECT * FROM TALUNO
        WHERE COD_ALUNO=2;

        SELECT * FROM TALUNO
        ORDER BY COD_ALUNO ASC  ;


        -- CASE ---
        SELECT NOME,ESTADO,
        CASE
        WHEN ESTADO = 'RS' THEN 'GAUCHO'
        WHEN ESTADO = 'AC' THEN 'ACREANO'
        WHEN ESTADO = 'RJ' AND SALARIO >500 THEN 'CARIOCA'
        ELSE 'OUTROS'
        END AS APELIDO
        FROM TALUNO;
        SELECT nome ||' '|| sobrenome AS NOME_COMPLETO FROM taluno;

