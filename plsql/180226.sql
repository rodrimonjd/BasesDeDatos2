-- Clausulas if


SET SERVEROUTPUT ON;

------------------------------------------------------------------------------
--Con la fecha del sistema calcular si el numero del dia es primo y si lo es decir hola primo
DECLARE
    vd_fecha DATE;
    vn_dia NUMBER;
BEGIN
    SELECT SYSDATE INTO vd_fecha FROM DUAL;
    SELECT EXTRACT(DAY FROM vd_fecha) INTO vn_dia FROM DUAL;
    
    IF(MOD(vn_dia, 2) = 0) THEN
        dbms_output.put_line(vn_dia || ' no es primo');
    ELSE
        dbms_output.put_line(vn_dia || ' !Hola Primo!');
    END IF;
END;
/

------------------------------------------------------------------------------

--ESTRUCTURA GOTO




------------------------------------------------------------------------------

--ESTRUCTURA LOOP
--imprimir la serie de fibonacci

DECLARE
    vn_primero NUMBER := 0;
    vn_segundo NUMBER := 1;
    vn_temp    NUMBER;
BEGIN
    dbms_output.put_line(vn_primero);
    dbms_output.put_line(vn_segundo);
    LOOP
        vn_temp := vn_primero + vn_segundo;
        EXIT WHEN vn_temp > 100;
        dbms_output.put_line(vn_temp);
        vn_primero := vn_segundo;
        vn_segundo := vn_temp;
    END LOOP;

END;
/
      
------------------------------------------------------------------------------

--ESTRUCTURA DE CONTROL WHILE
    
DECLARE
    vn_numero1 NUMBER := 12;
    vn_numero2 NUMBER := 18;
    vn_mcm NUMBER;
BEGIN
    IF vn_numero1 > vn_numero2 THEN
        vn_mcm := vn_numero1;
    ELSE
        vn_mcm := vn_numero2;
    END IF;
    
    WHILE (MOD(vn_mcm, vn_numero1) != 0 OR MOD(vn_mcm, vn_numero2) !=0) LOOP
        vn_mcm := vn_mcm + 1;
    END LOOP;
    
    dbms_output.put_line(vn_mcm);
END;
/
    
        
    
    
    
    
    