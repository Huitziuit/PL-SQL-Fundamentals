create table notes(
note int
);
declare

v_note int;

begin
    INSERT INTO notes VALUES(9);
    SELECT note INTO v_note FROM notes;
    if v_note > 10 or v_note < 0 then 
        dbms_output.put_line('NOTA INCORRECTA');
    elsif v_note <=9 then 
        dbms_output.put_line('NOTABLE');
    elsif v_note <= 7 then
        dbms_output.put_line('BIEN');
    elsif v_note <= 6 then
        dbms_output.put_line('SUFUCIENTE');
   elsif v_note <= 3 then
        dbms_output.put_line('INSUFUCIENTE');
    else
        dbms_output.put_line('MUY DEFICIENTE');
    end if;
end;
