--create table numbers(
--nu int
--);

declare
v_nu numbers.nu%type;

begin
    --INSERT INTO numbers VALUES(1);
    SELECT nu INTO v_nu FROM numbers;
    
    loop
        DBMS_OUTPUT.PUT_LINE(v_nu);
        v_nu:=v_nu + 4;
        DBMS_OUTPUT.PUT_LINE(v_nu);
        exit when v_nu >= 23;
        v_nu:= v_nu - 2;
    end loop;
end;