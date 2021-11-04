

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


