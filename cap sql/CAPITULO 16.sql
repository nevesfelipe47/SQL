

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

-----