--CAPITULO 17
        \
SELECT * FROM TALUNO;
  DECLARE

  TYPE REC_ALUNO IS RECORD
  (COD_ALUNO NUMBER NOT NULL := 0,
  NOME TALUNO.NOME%TYPE,
  CIDADE TALUNO.CIDADE%TYPE);

  REGISTRO REC_ALUNO;

  BEGIN

  REGISTRO.COD_ALUNO :=50 ;
  REGISTRO.NOME :='MASTER';
  REGISTRO.CIDADE :='NOVO HAMBURGO';
  Dbms_Output.PUT_LINE('CODIGO:  '||REGISTRO.COD_ALUNO);

  Dbms_Output.PUT_LINE('NOME:  '||REGISTRO.NOME);

  Dbms_Output.PUT_LINE('CIDADE:  '||REGISTRO.CIDADE);

  END;