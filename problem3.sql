create table numbers(
nume int);

declare
v_nume numbers.nume%type;
v_result int:= 1;
v_div decimal(6,2) :=1; --start in 1 becuse 0! = 1

begin
INSERT INTO numbers VALUES(5);
SELECT nume INTO v_nume FROM numbers;
for j in 1..v_nume loop
    for i in 1..j loop
        v_result:=v_result*i;
    end loop;
    v_div:=v_div + (1/v_result);
end loop;

dbms_output.put_line(v_div);

END;