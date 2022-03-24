create table numbers(
nume int
);

declare
v_nume numbers.nume%type;
v_result int;

begin
INSERT INTO numbers VALUES(12);
SELECT nume INTO v_nume FROM numbers;

for i in 1..v_nume loop
    dbms_output.put_line(i || ' x ' || v_nume || ' = ' || (v_nume * i));
end loop;

END;