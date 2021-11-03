
 ---- CAPITULO 6---

  SELECT Count(*) AS QTDE_REGISTROS,
          Avg(TOTAL) AS MEDIA,
          Avg(TOTAL) AS MEDIA,
          Max(TOTAL) AS MAXIMO,
          Min(TOTAL) AS MINIMO,
          Sum(TOTAL) AS SOMA,
          Max (DATA) AS DATA_MAIOR,
          Min (DATA) AS DATA_MENOR
          FROM TCONTRATO;
