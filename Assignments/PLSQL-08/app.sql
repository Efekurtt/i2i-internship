SET SERVEROUTPUT ON;
DECLARE
    input_string   VARCHAR2(30) := 'abcdefg';
    i              PLS_INTEGER;
    ch             CHAR(1);
BEGIN
    IF LENGTH(input_string) > 30 THEN
        DBMS_OUTPUT.PUT_LINE('Hata: Girdi 30 karakterden uzun olamaz.');
        RETURN;
    END IF;

    FOR i IN 1 .. LENGTH(input_string) LOOP
        ch := SUBSTR(input_string, i, 1);
        IF ch BETWEEN '0' AND '9' OR ch = ' ' THEN
            DBMS_OUTPUT.PUT_LINE('Hata: Rakam veya boşluk içeremez.');
            RETURN;
        END IF;
    END LOOP;

    FOR i IN 1 .. LENGTH(input_string) - 1 LOOP
        IF SUBSTR(input_string, i, 1) = SUBSTR(input_string, i + 1, 1) THEN
            DBMS_OUTPUT.PUT_LINE('Hata: Arka arkaya aynı karakter olamaz.');
            RETURN;
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('<chars>');
    FOR i IN 1 .. LENGTH(input_string) LOOP
        ch := SUBSTR(input_string, i, 1);
        DBMS_OUTPUT.PUT_LINE('  <char>' || ch || '</char>');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('</chars>');
END;
/
