/*create table numbers(
nume int
);
*/
declare
v_n numbers.nume%type;
v_var numeric;

CURSOR c_numbers
	IS 
	SELECT nume
	FROM numbers
	order by nume;
	
begin

	OPEN c_numbers;
	LOOP
		FETCH c_numbers INTO v_n;
		EXIT WHEN c_numbers%notfound;
		DBMS_OUTPUT.PUT_LINE('numbers: '|| v_n);
	END LOOP;
	CLOSE c_numbers;
end;