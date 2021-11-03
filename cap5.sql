
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

     --- UNIÃO DA TABELA DE ALUNO COM CONTRATO
     SELECT ALU.COD,ALU.NOME AS ALUNO,
     CON.COD_CONTRATO,CON.DATA, CON.TOTAL

     FROM  TALUNO ALU, TCONTRATO CON

     WHERE CON.COD_ALUNO = ALU.COD_ALU         -- CRITERIO DE UNIÃO ---

     AND Upper(ALU.NOME) LIKE '%' --- FILTRO---


