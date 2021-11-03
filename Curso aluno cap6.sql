
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
