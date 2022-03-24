create table piramid(
lev int
);
declare

v_lev int;
v_count int;
v_print varchar2(50):='';
v_printp varchar2(50):='*';

begin
    INSERT INTO piramid VALUES(8);
    SELECT lev INTO v_lev FROM piramid;
    v_count := v_lev - 1;
   
    
    for lev in 1..v_lev loop
    
        if lev=1 then
            v_printp:= '*';
        else
            v_printp:=v_printp || '**';
        end if;
        
        v_print:='';
        for spaces in 1..v_lev - lev loop
            v_print:=v_print || ' ';
        end loop;
        v_count:=v_count - 1;
        dbms_output.put_line(v_print || v_printp || v_print);
        
        
    end loop;
    
    
end;
