SET SERVEROUTPUT ON;

DECLARE
    vv_saludo VARCHAR2(50);
BEGIN
    vv_saludo := 'Hola mundo';
    dbms_output.put_line(vv_saludo);
END;
/
----------------------------------------------------
/*
DECLARE
    vv_saludo2 VARCHAR2(50) := 'Hola mundo' ;
BEGIN
    dbms_output.put_line(vv_saludo2);
END;
/
*/

----------------------------------------------------

DECLARE
    vv_firstname VARCHAR2(50);
    vv_lastname  VARCHAR2(50);
BEGIN
    SELECT
        first_name,
        last_name
    INTO
        vv_firstname,
        vv_lastname
    FROM
        hr.employees
    WHERE
        employee_id = 110;

    dbms_output.put_line('El nombre del empleado es: ' || vv_firstname || ' ' || vv_lastname);
END;
/

-----------------------------------------------------
DECLARE
    vv_firstname hr.employees.first_name%TYPE;
    vv_lastname  hr.employees.last_name%TYPE;
BEGIN
    SELECT
        first_name,
        last_name
    INTO
        vv_firstname,
        vv_lastname
    FROM
        hr.employees
    WHERE
        employee_id = 101;

    dbms_output.put_line('El nombre del empleado es: ' || vv_firstname|| ' ' || vv_lastname);
END;
/

------------------------------------------------------
DECLARE
    vv_employee hr.employees%rowtype;
BEGIN
    SELECT
        *
    INTO vv_employee
    FROM
        HR.EMPLOYEES
    WHERE
        employee_id = 101;

    dbms_output.put_line('El nombre del empleado es: '
                         || vv_employee.first_name
                         || ' '
                         || vv_employee.last_name);

END;
/
