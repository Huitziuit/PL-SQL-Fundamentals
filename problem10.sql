create table numbers(
nume int
);

declare

v_nume int;

begin
    INSERT INTO numbers VALUES(9);
    SELECT nume INTO v_nume FROM numbers;
    if MOD(v_nume,2) = 0 then 
        dbms_output.put_line(v_nume || ' es par');
    else
        dbms_output.put_line(v_nume || ' es impar');
    end if;
end;
