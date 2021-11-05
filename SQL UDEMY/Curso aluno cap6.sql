
 ---- CAPITULO 6---

  SELECT Count(*) AS QTDE_REGISTROS,
          Avg(TOTAL) AS MEDIA,
          Round (Avg(TOTAL),2) AS MEDIA, --- Round -> arrendondar
          Max(TOTAL) AS MAXIMO,
          Min(TOTAL) AS MINIMO,
          Sum(TOTAL) AS SOMA,
          Max (DATA) AS DATA_MAIOR,
          Min (DATA) AS DATA_MENOR
          FROM TCONTRATO;


          ---- PROXIMO CODIGO SEQUENCIAL TABELA
          SELECT Max(COD_CONTRATO) + 1 AS proximo_codigo
          FROM tcontrato;


          -----------------------------------------

          SELECT * FROM tcontrato;

          SELECT cod_aluno,
          Count(*) AS qtd_contrato,
          Sum(total) AS valor_tatal
          FROM tcontrato
                 GROUP BY cod_aluno
                 ORDER BY cod_aluno;


          ----------------------------



          SELECT To_Char(Trunc(data),'dd/mm/yyyy') AS data,
                  Sum(total) AS soma,
                  Avg(total) AS media,
                  Count(*) AS qtde
                  FROM tcontrato
                  GROUP BY Trunc(data)
                  ORDER BY data DESC;


      ----------------------------------------------------------

      ----Count -> ignora nulos

      SELECT Count (desconto)
      FROM tcontrato;

      ---- qtd de registros com estado informado

      SELECT Count(estado) FROM taluno;

      ------ qtd de estados diferentes

      SELECT Count (DISTINCT(estado))AS estados_diferentes FROM taluno

      ----------------------------------------------------

     --------------- qtd de registros por estado
                    SELECT estado,Count(*) AS qtd_de_registros
                    FROM taluno
                    GROUP BY estado;

                    -------------------------------
                    SELECT Sum (desconto),
                            Avg(desconto),
                            Count(desconto),
                            Round(Avg(Nvl(desconto,0)),2)
                            FROM tcontrato;
                  ------------------------------------------



                  ------ total de contrato por estado
                  SELECT alu.estado,
                  Sum(con.total) total, Count(*) qtd

                  FROM taluno alu, tcontrato con
                  WHERE alu.cod_aluno = con.cod_aluno
                  GROUP BY alu.estado
                  ORDER BY alu.estado;