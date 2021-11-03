
        SELECT NOME, ESTADO,
         Decode(ESTADO, 'RS', 'GAUCHO',
                        'AC', 'ACREANO',
                        'SP', 'PAULISTA',
                        'PE', 'PERNAMBUCANO',
                              'OUTROS') AS APELIDO
                              FROM TALUNO;


  SELECT COD_ALUNO, NOME, CIDADE,
  Decode ( CIDADE, 'RECIFE','RECIFENCE' ,
                    'OLINDA', 'PRATICA ARRASTÃO',
                    'OUTROS') AS APELIDO
                    FROM TALUNO
                    ORDER BY COD_ALUNO;



      SELECT  * FROM TALUNO
      WHERE COD_ALUNO =16;

      UPDATE TALUNO SET
      CIDADE = 'OLINDA'
      WHERE COD_ALUNO = 16;

      UPDATE TALUNO SET
      CIDADE = NULL
      WHERE COD_ALUNO = 16;


                --- PRODUTO CARTESIANO --> ERRADO
      SELECT TALUNO.COD_ALUNO, TALUNO.NOME, TCONTRATO.TOTAL
      FROM TALUNO, TCONTRATO
      ORDER BY COD_ALUNO;

      ----
      SELECT * FROM TCONTRATO;



      -- CORRETO
           SELECT TALUNO.COD_ALUNO, TALUNO.NOME, TCONTRATO.TOTAL
            FROM TALUNO, TCONTRATO
            WHERE TALUNO.COD_ALUNO = TCONTRATO.COD_ALUNO
            ORDER BY COD_ALUNO;


            UPDATE TALUNO SET
            NOME = 'MAURICIO'
            WHERE COD_ALUNO=5;


            ----- ERRADO - COLUNA AMBIGUA
            SELECT COD_ALUNO,TALUNO.NOME, TCONTRATO.TOTAL
            FROM TALUNO, TCONTRATO
            WHERE TALUNO.COD_ALUNO = TCONTRATO.COD_ALUNO;

            ---- CORRETO, QUANDO UMA COLUNA EXISTE COM MESMO nome em mais de uma tabela,
            --- colocar prefixo na coluna
            ------------------------------------------------

     --- UNIÃO DA TABELA DE ALUNO COM CONTRATO


     SELECT ALU.COD_ALUNO,ALU.NOME ||' '||ALU.SOBRENOME AS ALUNO,
     CON.COD_CONTRATO,CON.DATA, CON.TOTAL

     FROM  TALUNO ALU, TCONTRATO CON

     WHERE CON.COD_ALUNO = ALU.COD_ALUNO  --- CRITERIO DE UNIÃO ---

     AND Upper(ALU.NOME) LIKE '%' --- FILTRO---

     ORDER BY ALU.NOME; ---ORDERNAR POR NOME--

-------------------------------------------------------------------------------

SELECT * FROM TALUNO
SELECT * FROM TCONTRATO
SELECT * FROM TITEM
SELECT * FROM TCURSO

SELECT ALU.COD_ALUNO, ALU.NOME AS ALUNO,
CON.COD_CONTRATO, CON.DATA, CON.TOTAL,
ITE.COD_CURSO, CUR.NOME AS CURSO,
ITE.VALOR

FROM TALUNO ALU, TCONTRATO CON,
 TITEM ITE, TCURSO CUR

 WHERE  ALU.COD_ALUNO = CON.COD_ALUNO(+) -- CRITERIO UNIAO
 AND CON.COD_CONTRATO = ITE.COD_CONTRATO --- CRITERIO DE UNIAO
 AND ITE.COD_CURSO = CUR.COD_CURSO   --- CRITERIO DE UNIAO

 ORDER BY CON.TOTAL DESC; --- ORDENAR



 SELECT * FROM atendime; --- ID_ PACIENTE / ID_UNID_INTER / DT_ENTRADA / DT_INTER / DT_ALTA      -- A

 SELECT * FROM pacientes;   ---- ID_PACIENTE / NOME_PACIENTE / ID_BAIRRO / NM_BAIRRO            --  B

 SELECT * FROM unid_inter;  ---- ID_UNID_INTER / NOME_UNID_INTER                              --  C

                                             ----- MEU BB ---
 SELECT A.ID_PACIENTE, B.NOME_PACIENTE, A.ID_UNID_INTER,
        C.NOME_UNID_INTER,
        A.DT_ENTRADA, A.DT_ALTA,
        B.ID_BAIRRO,B.NM_BAIRRO


        FROM ATENDIME A,PACIENTES B, UNID_INTER C

        WHERE   A.ID_PACIENTE = B.ID_PACIENTE (+)
        AND A.ID_UNID_INTER = C.ID_UNID_INTER (+)
        AND Lower(B.NM_BAIRRO) LIKE '%'

        ORDER BY NOME_PACIENTE asc;

        UPDATE



