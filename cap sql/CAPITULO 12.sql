
--- CAPITULO 12 ----

  CREATE SEQUENCE SEQ_ALUNO1
  START WITH 60
  -- VALOR INICIAL
  INCREMENT BY 2
  --QTD A INCREMENTAR
  MINVALUE 60
  --- VALOR MINIMO
  MAXVALUE 250
  -- VALOR MAXIMO
  NOCACHE
  -- NÃO GUARDA EM CACHE FAIXA DE
  -- VALORES
  NOCYCLE;
  ----
  ----

  INSERT INTO TALUNO (COD_ALUNO, NOME)
  VALUES (SEQ_ALUNO1.NEXTVAL,'MASTER TRAINING');

  SELECT * FROM TALUNO;


  SELECT * FROM USER_SEQUENCES;

  ---- VALOR ATUAL
  SELECT SEQ_ALUNO1.CURRVAL FROM DUAL;


  ALTER SEQUENCE  SEQ_ALUNO1 MAXVALUE 500;

  -- ALTERAR VALIR DA SEQUENCIA
  DROP SEQUENCE SEQ_ALUNO1;


  ------------------------------
  ---- INDICES SECUNDARIOS
  SELECT NOME FROM TALUNO
  WHERE NOME LIKE '%A%';

  CREATE INDEX IND_TALUNO_NOME1 ON TALUNO(NOME);

  SELECT * FROM USER_INDEXES


  CREATE INDEX IND_TALU_NOMECIDADE
  ON TALUNO (NOME, CIDADE);

  SELECT NOME ,CIDADE FROM TALUNO
  WHERE NOME LIKE '%A%' AND CIDADE LIKE '%A%';


  CREATE SYNONYM ALU FOR TALUNO;

  SELECT * FROM alu;

