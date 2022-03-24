/*create table weight(
kg decimal(4,2)
);*/

declare
v_kg weight.kg%type;
v_libra decimal(4,2);
v_onza decimal(4,2);

begin
--INSERT INTO weight VALUES(1);
SELECT kg INTO v_kg FROM weight;
v_libra := v_kg * 2.20462;
v_onza := v_kg * 35.274;

dbms_output.put_line('Kilos: '||v_kg);
dbms_output.put_line('Libras: '||v_libra);
dbms_output.put_line('Onzas: '||v_onza);

END;
