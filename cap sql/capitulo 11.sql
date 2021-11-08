

--- capitulo 11
CREATE  OR REPLACE VIEW VW_ALUNO
AS
  SELECT COD_ALUNO AS CODIGO, SALARIO,
          NOME AS ALUNO, CIDADE
  FROM TALUNO
  WHERE ESTADO='PE';

  SELECT * FROM VW_ALUNO
  ORDER BY ALUNO;


  ---

  CREATE OR REPLACE VIEW VW_CONTRATO_MAIOR_QUE_10
    AS
      SELECT COD_CONTRATO, DESCONTO
      FROM TCONTRATO
      WHERE DESCONTO > 10;

      SELECT * FROM VW_CONTRATO_MAIOR_QUE_10

      ORDER BY DESCONTO;


      -----------
      ----- NOME E CONTEUDO DAS VIEWS

      SELECT VIEW_NAME, TEXT
      FROM USER_VIEWS;


      CREATE OR REPLACE VIEW vw_aluno2 (cod, aluno, sal)
      AS
      SELECT cod_aluno, nome, salario
      FROM taluno
      ORDER BY cod_aluno;

                      ROLLBACK;
      SELECT * FROM vw_aluno;

      SELECT * FROM vw_aluno2;

      SELECT * FROM taluno
      WHERE cod_aluno IS NULL;

---------- ------- view complexa

      CREATE OR REPLACE VIEW v_contrato
      AS
      SELECT Trunc(data) AS data,
              Max (desconto) maximo,
              Avg (desconto) mediam ,
              Count(*) qtd
              FROM tcontrato
              GROUP BY Trunc(data) ;


              SELECT * FROM v_contrato

--------------------- ----------------------------

--- VIEW

----- PROMPT CREAT OR  REPLACE VIEW V_ALUNO3
  CREATE OR REPLACE VIEW VW_ALUNO3 (
  CODIGO,
  SALARIO,
  ESTADO,
  ALUNO,
  CIDADE
) AS
SELECT COD_ALUNO AS CODIGO, SALARIO, ESTADO,
                    NOME AS ALUNO, CIDADE
                    FROM TALUNO
                    WHERE ESTADO = 'PE';


------- VIEW SIMPLES
CREATE OR REPLACE VIEW VW_PESSOA_F
AS
  SELECT COD_PESSOA, TIPO, NOME, COD_RUA AS RUA
  FROM TPESSOA
  WHERE TIPO='F';


  ---
  SELECT * FROM VW_PESSOA_F
  WHERE RUA !=3;


  ----
  ---- EXEMPLO DE CONSULTA USANDO VIEW E TABELA
  SELECT PES.COD_PESSOA AS CODIGO,
          PES.NOME AS PESSOA,
          CID.NOME AS CIDADE,
          RUA.NOME AS RUA
          FROM VW_PESSOA_F PES, TRUA RUA, TCIDADE CID
          WHERE PES.RUA = RUA.COD_RUA(+)
          AND CID.COD_CIDADE = RUA.COD_CIDADE
          ORDER BY PES.NOME;

    ------- OPERAÇÃO DMK NA VIEW
     CREATE OR REPLACE VIEW VW_CURSOS1000CK
          AS
            SELECT COD_CURSO, NOME, VALOR
            FROM TCURSO
            WHERE VALOR = 1000
            WITH CHECK OPTION CONSTRAINT VW_CURSOS1000_CK;



      SELECT * FROM  VW_CURSOS1000CK

  -- INSERINDO ATRAVEZ DA VIEW CRIADA
      INSERT INTO  VW_CURSOS1000CK
      (COD_CURSO,NOME,VALOR)
     VALUES (52,'TESTE Y', 1000);

     SELECT * FROM TCURSO

     SELECT * FROM TALUNO;

      ----- DELETE  EM VIEW
     SELECT * FROM VW_ALUNO
     ORDER BY codigo;
    --------
    DELETE FROM VW_ALUNO WHERE CODIGO = 3


    --- view seomente leitura (não permite dml)

    CREATE OR REPLACE VIEW VW_ALUNO3
    AS SELECT COD_ALUNO CODIGO,
    NOME ALUNO, CIDADE
    FROM TALUNO
    WHERE ESTADO ='PE'
    WITH READ ONLY;


    SELECT * FROM VW_ALUNO3;
    SELECT * FROM taluno

    COMMIT;

    ALTER TABLE TALUNO DROP COLUMN SOBRENOME;

    UPDATE TALUNO SET
    SALARIO = 1200
    WHERE COD_ALUNO = 3;

     INSERT INTO  TALUNO
      (COD_ALUNO,NOME, CIDADE, CEP)
      VALUES (3,'MARIO','CARUARU','5646');

    INSERT INTO    taluno
