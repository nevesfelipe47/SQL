

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
        WHEN ESTADO = 'RS' THEN 'GAUCHO' --- WHEN = QUANDO O ESTADO FOR = A "RS" ENTÃO = 'GAUCHO'
        WHEN ESTADO = 'AC' THEN 'ACREANO'    --- WHEN = QUANDO O ESTADO FOR =  "AC" ENTÃO = 'ACREANO'
        WHEN ESTADO = 'RJ' AND SALARIO >500 THEN 'CARIOCA'  --- WHEN = QUANDO O ESTADO FOR =  "RJ" E SALARIO MAIOR QUE 500  ENTÃO = 'CARIOCA'
        ELSE 'OUTROS' --- CASO NÃO SEJA NENHUM DOS ACIMA = 'OUTROS'
        END AS APELIDO   ---- FIM
        FROM TALUNO;  --DA TABLE TALUNO


        SELECT NOME,SALARIO,
        CASE
        WHEN NOME IS NULL THEN 'INDIGENTE'
        WHEN SALARIO >620 THEN 'RICO'
        ELSE 'ESTAGIARIO'
        END AS APELIDO
        FROM TALUNO;

             -----------
        SELECT SYSDATE AS DATA FROM DUAL

        -----------

        SELECT NOME, ESTADO,
         Decode(ESTADO, 'RS', 'GAUCHO',
                        'AC', 'ACREANO',
                        'SP', 'PAULISTA',
                        'PE', 'PERNAMBUCANO',
                              'OUTROS') AS APELIDO
                              FROM TALUNO;


        SELECT nome ||' '|| sobrenome AS NOME_COMPLETO FROM taluno;

