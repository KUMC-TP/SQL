-- 
SELECT TRIM(SUBSTR(STR,INSTR(STR,'@',1,LEVEL)+1,INSTR(STR,'@',1,LEVEL+1)-INSTR(STR,'@',1,LEVEL)-1)) ROWDATA
      ,LEVEL lV
  FROM (SELECT '@'||'test test2@111 @333#444@ 98080'||'@' STR
          FROM DUAL
        )
 CONNECT BY INSTR(STR,'@',1,LEVEL) > 0
 ;

