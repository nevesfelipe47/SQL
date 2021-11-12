

--- condicionais IF e  else


  DECLARE
    VNOME VARCHAR2(30) := 'CARIOCA';
    VCIDADE VARCHAR2 (30);
    VESTADO VARCHAR2(2);

  BEGIN
    IF (VNOME = 'GAUCHO') THEN
      vcidade := 'PORTO ALEGRE';
      VESTADO := 'RS';
    ELSIF (VNOME= 'CARIOCA') THEN
      VCIDADE :='RIO DE JANEIRO';
      VESTADO:= 'RJ';
    ELSE
      IF (VESTADO ='SP') THEN
        VCIDADE := 'PAULISTA';
        VESTADO  :='SP';
      ELSE
        VCIDADE:='OUTROS';
        VESTADO :='XX';
      END IF;
    END IF;
    Dbms_Output.PUT_LINE(VCIDADE||'   -   '||VESTADO);
  END;

  ---
  --- case when
  ---

  DECLARE
    VESTADO VARCHAR2 (2) :='RR';
    VNOME VARCHAR2(30);
  BEGIN
    CASE
      WHEN VESTADO ='RS' THEN VNOME := 'GAUCHO';
      WHEN VESTADO ='RJ' OR VESTADO='ES' THEN VNOME :='CARIOCA';
    ELSE
      VNOME := 'OUTROS';
    END CASE;
      Dbms_Output.PUT_LINE('APELIDO:  '||VNOME);
  END;

  ---
  --- LAÇO DE REPETIÇÃO
  --

  DECLARE
    VCONTADOR  INTEGER :=5;
  BEGIN
    LOOP
       VCONTADOR:= VCONTADOR +1;
       Dbms_Output.PUT_LINE(VCONTADOR);
       EXIT WHEN VCONTADOR = 10;
    END LOOP;
    Dbms_Output.PUT_LINE('FIM DO LOOP');
  END;



-----

---
--- whlie loop
---

  DECLARE
    VCONTADOR INTEGER :=0;
    VTEXTO VARCHAR2(10);
  BEGIN
    WHILE VCONTADOR < 10
    LOOP
     VCONTADOR := VCONTADOR+1;
    IF (VCONTADOR Mod 2) = 0 THEN
      VTEXTO := 'PAR';
    ELSE
      VTEXTO :='IMPAR';
    END IF;

    Dbms_Output.PUT_LINE(VCONTADOR||'  ->  '||VTEXTO);
  END LOOP;
  END;


  --- FOR LOOP - > MAIS INDICADO PARA LAÇOS EM TABELAS

  DECLARE
  VCONTADOR INTERGER
  BEGIN
  FOR VCONTADOR IN 1..10
  LOOP
  --VCONTADOR := VCONTADOR  +1;
  Dbms_Output.PUT_LINE('FOR LOOP:  '||VCONTADOR);
  --EXITE WHEN VCONTADOR = 5;
  END LOOP;
  END;
