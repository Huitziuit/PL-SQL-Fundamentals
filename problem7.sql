create table numbers(
base int,
exp int
);

declare
v_base numbers.base%type;
v_exp numbers.exp%type;
v_result int := 0;

begin
INSERT INTO numbers VALUES(2,8);
SELECT base, exp INTO v_base, v_exp FROM numbers;

for i in 1..v_exp loop
    v_result:=v_result + power(v_base,i);
end loop;

dbms_output.put_line(v_result);

END;