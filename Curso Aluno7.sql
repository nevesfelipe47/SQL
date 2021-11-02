

  SELECT TOTAL,
        DESCONTO,
        DESCONTO+TOTAL,
        Nvl(DESCONTO,0),
        Nvl(DESCONTO,0) +TOTAL,
        Nvl2 (DESCONTO, TOTAL,-1)
        FROM TCONTRATO;