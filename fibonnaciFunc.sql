create or replace function fibonnaciFunc(n in number)
return number as
a number:=0;
b number:=1; 
c number;  
i number; 
begin 
	
	dbms_output.put_line('Fibonacci series is:'); 
	dbms_output.put_line(a); 
	dbms_output.put_line(b);
	for i in 2..n 
	loop 
		c:=a+b; 
		a:=b;
		 b:=c;
 		dbms_output.put_line(c); 
	end loop; 
	return c;
end fibonnaciFunc;
 /

Declare
n number;
r number;
begin
	n :=&n;
	r := fibonnaciFunc(n);
end;
/