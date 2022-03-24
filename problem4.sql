create table money(
coin int
);

declare
    v_coin money.coin%type;
    v_euro decimal(8,4):=0.057;
    v_dolar decimal(8,4):=0.071;
    v_yen decimal(8,4):=5.63;
    v_ns decimal(8,4):=0.19;

begin
    INSERT INTO money VALUES(5);
    SELECT coin INTO v_coin FROM money;
    v_dolar := v_dolar * v_coin;
    v_euro := v_euro * v_coin;
    v_yen := v_yen * v_coin;
    v_ns := v_ns * v_coin;
    
    dbms_output.put_line('Pesos: '||v_coin);
    dbms_output.put_line('Dolares: '||v_dolar);
    dbms_output.put_line('Euros: '||v_euro);
    dbms_output.put_line('Yenes: '||v_yen);
    dbms_output.put_line('Nuevos Soles: '||v_ns);

END;
