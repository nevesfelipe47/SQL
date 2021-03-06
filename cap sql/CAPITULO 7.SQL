

  --------- capitulo 07 - sub-consultas

  ---

  SELECT COD_CONTRATO, DATA , TOTAL
  FROM TCONTRATO
  WHERE TOTAL >
  (SELECT VALOR FROM TCURSO
    WHERE COD_CURSO = 6);


  ---- Errado(só pode retornar )
  ---- linha na subconsulta)

  SELECT COD_CONTRATO, DATA, TOTAL
  FROM TCONTRATO
  WHERE TOTAL >=
   (SELECT VALOR FROM TCURSO
  WHERE  VALOR > 500) ;


  ------ TODOS OS ALUNOS DA MESMA CIDADE DO ALUNO
  --- MENOS O ALUNOS

  SELECT COD_ALUNO, NOME,CIDADE
  FROM TALUNO
  WHERE CIDADE = (SELECT CIDADE FROM TALUNO
  WHERE COD_ALUNO =5)
  AND COD_ALUNO <>5;

  ---- TODOS OS ALUNOS DA MESMA CIDADE E
  --- ESTADO DO ALUNO
  --MENOS O ALUNO

  SELECT COD_ALUNO, NOME, CIDADE, ESTADO
  FROM TALUNO
  WHERE (CIDADE, ESTADO ) =
                          (SELECT CIDADE, ESTADO FROM TALUNO
                          WHERE COD_ALUNO = 1)
                          AND COD_ALUNO <> 1;

  -----SOMA TODOS OS ITENS, E MOSTRA SOMENTE CUJO O
  ----O VALOR MINIMO SEJA MAIOR QUE O VALOR MEDIO
  --- DOS CURSOS


  SELECT COD_CURSO, Min( VALOR )AS VALOR_MINI, Sum(VALOR)AS SOMA_VALOR,
  Count(*) QTD
  FROM TITEM
  WHERE COD_curso >0
  GROUP BY cod_curso
  HAVING Min(valor) >
                (SELECT Avg (VALOR) FROM TCURSO)
                ORDER BY COD_CURSO;

 -------SOMA O TOTAL DE CONTRATOS POR ALUNO E MOSTRA
 -------SOMENTE CUJO O MENOR CONTRATO SEJA MAIOR QUE
 -------O VALOR MEDIO DE CURSO

  SELECT COD_ALUNO, Min(TOTAL), Sum(TOTAL)
  FROM TCONTRATO
  GROUP BY COD_ALUNO
  HAVING Min(TOTAL) >
  (SELECT Avg(VALOR) FROM TCURSO);


  ------TODOS OS CURSOS QUE ESTÃO NA TABELA DE
  ------ITEM (VENDIDO)

    SELECT  COD_CURSO,NOME,VALOR
      FROM TCURSO
          WHERE COD_CURSO IN (SELECT COD_CURSO FROM TITEM)


    ---TODOS OS CURSOS QUE NAO ESTAO NA TABELA DE ITEM
    ---(NAO VENDIDOS)
    SELECT COD_CURSO, NOME , VALOR
    FROM TCURSO
    WHERE COD_CURSO NOT IN (SELECT COD_CURSO FROM TITEM)
    ORDER BY NOME

    --- CODIGO EQUIVALENTE A SUBSELECT
    --- (SE OS VALORES SÃO CONHECIDOS )

    SELECT COD_CURSO, NOME, VALOR
    FROM TCURSO WHERE COD_CURSO IN (1,2,3,4);

    ----------------------------

    SELECT COD_CURSO ,NOME,VALOR
    FROM TCURSO
    WHERE COD_CURSO = 1
    OR COD_CURSO = 2 OR COD_CURSO = 3;


    ---TODOS OS CURSO QUE FORAM VENDIDOS
    ----PELO VALOR  PADRAO

    SELECT * FROM TITEM
    WHERE (COD_CURSO, VALOR )IN
    (SELECT COD_CURSO, VALOR FROM TCURSO)


    -----SUBCONSULTA NA CLAUSULA FROM

    SELECT ITE.COD_CONTRATO, ITE.VALOR ,
    ITE.COD_CURSO,
    CUR.COD_CURSO, CUR.VALOR
    FROM TITEM ITE,
    (SELECT COD_CURSO,VALOR
    FROM TCURSO WHERE VALOR > 500) CUR
    WHERE CUR.COD_CURSO = ITE.COD_CURSO



