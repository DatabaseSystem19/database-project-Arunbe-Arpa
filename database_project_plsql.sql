--variable declation and fetching data to show output

set serveroutput on
declare 
product_id inventory.product_id%type;
product_name inventory.product_name%type;
price number(10,2);
begin
select product_id,product_name,price into product_id,product_name,price from inventory where product_id=13;
dbms_output.put_line('product_id: '||product_id|| ' product_name: '||product_name || ' price: '||price);
end;
/
--insert values
set serveroutput on
declare 
product_id inventory.product_id%type:=55;
product_name inventory.product_name%type:='semolina';
price number(10,2):=230;
quantity inventory.quantity%type:=40;
begin
insert into inventory values(product_id,product_name,price,quantity);
end;
/
--delete values
set serveroutput on
declare 
product_id inventory.product_id%type;
begin
delete from inventory where product_id=55;
end;
/

--rowtype and show output
set serveroutput on
declare 
product_row inventory%rowtype;
begin
select product_id,product_name,price into product_row.product_id,product_row.product_name,product_row.price from inventory where product_id=15;
dbms_output.put_line('product_id: '||product_row.product_id|| ' product_name: '||product_row.product_name|| ' price: '||product_row.price);
end;
/
--for loop + cursor
set serveroutput on
declare 
product_row inventory%rowtype;
cursor csr is select product_id,product_name,price into product_row.product_id,product_row.product_name,product_row.price from inventory where price=350;
begin
open csr;
for counter in 1..4 loop
fetch csr into product_row.product_id,product_row.product_name,product_row.price;
dbms_output.put_line('product_id: '||product_row.product_id|| ' product_name: '||product_row.product_name|| ' price: '||product_row.price);
end loop;
close csr;
end;
/

--function
set serveroutput on
create or replace function fun(var1 in varchar) return varchar AS
value inventory.product_name%type;
begin
  select product_name into value from inventory where product_id=var1; 
   return value;
end;
/
set serveroutput on
declare 
value varchar(255);
begin
value:=fun(15);
dbms_output.put_line('product_name: '||value);
end;
/

--labtest
set  serveroutput on
declare
cursor csr is select s_date,company from supplier join sales on sales.product_id=supplier.product_id;
s_date sales.s_date%type;
company supplier.company%type;
begin
open csr;
loop
fetch csr into s_date,company;
exit when csr%notfound;
dbms_output.put_line ('s_date: ' || s_date ||' company: ' || company );
end loop;
close csr;
end;
/



