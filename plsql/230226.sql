-------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- precidimientos almacenados

SET SERVEROUTPUT ON;

-------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE saludar (
    param_nombre IN VARCHAR2
) IS
    mensaje VARCHAR2(100);
BEGIN
    mensaje := 'Hola' || param_nombre;
    dbms_output.put_line(mensaje);
END;

BEGIN
    saludar('Juan');
END;

DROP PROCEDURE saludar;

-------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE sp_holamundo ( param_nombre IN VARCHAR2 DEFAULT 'sapa')
/* Juan David Rodriguez
    23/02/26
    Hola mundo (ejercicio 1)
*/ 
IS
    vv_mensaje VARCHAR2(100);
BEGIN
    vv_mensaje := 'Hola mundo y hola ' || param_nombre;
    dbms_output.put_line(vv_mensaje);
END sp_holamundo;
/

BEGIN
    --sp_holamundo('Juan');
    sp_holamundo;
END;
/

DROP PROCEDURE sp_holamundo;

-------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE sp_ultimoViernes
/* Juan David Rodriguez
    23/02/26
    Ubicar el ultimo viernes de cada mes (ejercicio 2)
*/ 
IS
    vd_fechaAct DATE := SYSDATE';
    vd_ultimo_viernes DATE;
    vd_ultimo_Dia DATE;
BEGIN
    vd_ultimo_Dia := LAST_DAY(vd_fechaAct);
    vd_ultimo_viernes := NEXT_DAY(vd_ultimo_dia - 7, 'Viernes');
    
    dbms_output.put_line('Fecha actual: ' || TO_CHAR(vd_fechaAct, 'DD/MM/YYYY'));
    dbms_output.put_line('Ultimo viernes del mes: ' || TO_CHAR(vd_ultimo_viernes, 'DD/MM/YYYY'));
END sp_ultimoViernes;
/

BEGIN
    sp_ultimoViernes;
END;
/

DROP PROCEDURE sp_ultimoViernes;
  
  