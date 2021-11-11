--- cap 15

DECLARE
    vVALOR NUMBER (8,2);
    vNOME VARCHAR (30);
    BEGIN
    SELECT VALOR, NOME
    INTO vVALOR,vNOME
    FROM TCURSO
    WHERE COD_CURSO =&COD_CURSO;
    dbms_output.put_line('VALOR:   '|| TO_CHAR (vVALOR,'FM9999.99'));

    dbms_output.put_line('CURSO:   '|| INITICAP(vNOME));

    END;

DECLARE
 VCONTRATO NUMBER := &COD_CONTRATO;
 VTEXTO VARCHAR2(50);

 BEGIN
    UPDATE TCONTRATO SET
    DESCONTO = DESCONTO +2
    WHERE COD_CONTRATO >= VCONTRATO;

    VTEXTO := SQL%ROWCOUNT;

    -- RETORNA QRD DE REGISTROS AFETADOS
    --- PELP COMANDO SQL
    Dbms_Output.PUT_LINE (VTEXTO|| 'LINHAS ATUALIZADAS.'));



---
SELECT * FROM tcurso

  DECLARE
    vDt_compra tcontrato.Data%TYPE;

    vDt_curso tcontrato.Data%TYPE;
BEGIN
  SELECT data, data + 10
  INTO vDt_compra, vDt_curso
  FROM tcontrato
  WHERE cod_contrato = &contrato;
  Dbms_Output.put_line('data compra:  '|| vDt_compra);
  Dbms_Output.put_line('data curso:  '|| vDt_curso);

END;

                                        SELECT * FROM TCONTRATO

SELECT Max(cod_contrato) FROM TCONTRATO;
CREATE SEQUENCE SEQ_CONTRATO1 START WITH 23;

DECLARE
  vCOD TCONTRATO.COD_CONTRATO%TYPE;
BEGIN
  SELECT SEQ_CONTRATO1.NEXTVAL
  INTO vCOD FROM DUAL;

  INSERT INTO TCONTRATO(COD_CONTRATO,DATA,
                          COD_ALUNO, DESCONTO)
  VALUES (vCOD, SYSDATE,2 ,NULL);

  Dbms_Output.PUT_LINE('CRIADO CONTRATO '||vCOD);

END;

--- PEGAR O VALOR ATUAL DA SEQUENCE

SELECT SEQ_CONTRATO1.CURRVAL FROM DUAL;

-------------

SELECT * FROM TCONTRATO
ORDER BY COD_CONTRATO;

---

-- UPDATE

DECLARE
  vValor tcurso.Valor%TYPE := &valor;

  BEGIN
  UPDATE tcurso SET
  valor = valor + vValor
  WHERE carga_horaria>=30;
  END;

  SELECT * FROM tcurso


  --- DELETE

  DECLARE
  vcontrato tcontrato.cod_contrato%TYPE := &contrato;
  BEGIN
  DELETE FROM tcontrato
  WHERE cod_contrato = vcontrato;
  END;

           SELECT * FROM tcontrato
 ----
 --- erro no data found
 --- select into que nao encontra registro

 DECLARE
 vdt_compra tcontrato.data%TYPE;
 vtotal tcontrato.total%TYPE;
  vdt_atual DATE := SYSDATE;
  BEGIN
  SELECT data ,total
  INTO vdt_compra ,Vtotal
  FROM tcontrato
  WHERE data =vdt_atual;
  END;

----------------------------------------------

  DECLARE
    VCONTRATO NUMBER :=&COD_CONTRATO;
    VTEXTO VARCHAR2(50);
  BEGIN
    UPDATE TCONTRATO SET
    DESCONTO = DESCONTO +2
    WHERE COD_CONTRATO >= VCONTRATO;

    VTEXTO := SQL%ROWCOUNT;
    --RETORNA QTD DE REQUISITOS ALTERADOS AFETADOS
    --PELO COMANDO SQL

    Dbms_Output.PUT_LINE(VTEXTO|| ' LINHAS ATUALIZADAS.');
  END;
  --------
SELECT * FROM dual;