/*create table words(
passwords varchar(50)
);*/

declare
c_pass words.passwords%type;
v_correct varchar(50):='qwerty123';

CURSOR c_attempts
	IS 
	SELECT passwords
	FROM words;
	
begin

    INSERT INTO words VALUES('qwe');
    INSERT INTO words VALUES('asdfg');
    INSERT INTO words VALUES('asdfgh98765');

	OPEN c_attempts;
	LOOP
		FETCH c_attempts INTO c_pass;
		EXIT WHEN c_attempts%notfound;
		if c_pass != v_correct then
		    DBMS_OUTPUT.PUT_LINE('Password incorrect');
		end if;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('Close program');
	CLOSE c_attempts;
end;