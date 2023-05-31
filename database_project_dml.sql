--data entry to table inventory

insert into inventory(product_id ,product_name,price,quantity)values(11,'soyabean oil',250,50);
insert into inventory(product_id ,product_name,price,quantity)values(12,'mustard oil',150,60);
insert into inventory(product_id ,product_name,price,quantity)values(13,'olive oil',350,40);
insert into inventory(product_id ,product_name,price,quantity)values(14,'potato',250,50);
insert into inventory(product_id ,product_name,price,quantity)values(15,'onion',150,60);
insert into inventory(product_id ,product_name,price,quantity)values(16,'garlic',350,40);
insert into inventory(product_id ,product_name,price,quantity)values(17,'flour',250,50);
insert into inventory(product_id ,product_name,price,quantity)values(18,'sugar',150,60);
insert into inventory(product_id ,product_name,price,quantity)values(19,'salt',350,40);
insert into inventory(product_id ,product_name,price,quantity)values(10,'pepper',650,40);

--data entry to table supplier

insert into supplier(supplier_id ,product_id,company,quantity,restock_date,reference,contact)values(101,11,'teer',100,date '2021-03-21','mokhles',01715579505);
insert into supplier(supplier_id ,product_id,company,quantity,restock_date,reference,contact)values(102,12,'teer',100,date '2021-03-21','mokhles',01715579505);
insert into supplier(supplier_id ,product_id,company,quantity,restock_date,reference,contact)values(103,13,'teer',90,date '2021-03-21','mokhles',01715579505);
insert into supplier(supplier_id ,product_id,company,quantity,restock_date,reference,contact)values(104,14,'Bengal',45,date '2021-04-21','siri',01715579900);
insert into supplier(supplier_id ,product_id,company,quantity,restock_date,reference,contact)values(105,15,'Bengal',88,date '2021-05-21','siri',01715579330);
insert into supplier(supplier_id ,product_id,company,quantity,restock_date,reference,contact)values(106,16,'Bengal',100,date '2021-04-21','siri',01715579910);
insert into supplier(supplier_id ,product_id,company,quantity,restock_date,reference,contact)values(107,17,'fresh',150,date '2021-06-20','ramu',01715579900);
insert into supplier(supplier_id ,product_id,company,quantity,restock_date,reference,contact)values(108,18,'fresh',150,date '2021-04-21','ramu',01715579940);
insert into supplier(supplier_id ,product_id,company,quantity,restock_date,reference,contact)values(109,19,'rupchada',150,date '2021-09-21','sadi',01715579900);
insert into supplier(supplier_id ,product_id,company,quantity,restock_date,reference,contact)values(100,10,'rupchada',400,date '2021-04-21','sadi',01715579950);

--data entry to table customer

insert into customer(customer_id ,order_id,product_id,customer_name,phone,location,delivery_date)values(111,21,11,'arpa',01715579675,'dhaka',date '2021-03-11');
insert into customer(customer_id ,order_id,product_id,customer_name,phone,location,delivery_date)values(112,22,12,'aditi',01715679675,'dhaka',date '2021-04-11');
insert into customer(customer_id ,order_id,product_id,customer_name,phone,location,delivery_date)values(113,23,13,'zereen',01716579675,'khulna',date '2021-03-11');
insert into customer(customer_id ,order_id,product_id,customer_name,phone,location,delivery_date)values(114,24,14,'arpa',01715589675,'chittagong',date '2021-03-22');
insert into customer(customer_id ,order_id,product_id,customer_name,phone,location,delivery_date)values(115,25,15,'shalik',01315579675,'bhola',date '2021-03-11');
insert into customer(customer_id ,order_id,product_id,customer_name,phone,location,delivery_date)values(116,26,16,'tanha',01715571675,'bhola',date '2021-03-11');
insert into customer(customer_id ,order_id,product_id,customer_name,phone,location,delivery_date)values(117,27,17,'zereen',01716579675,'khulna',date '2021-03-11');
insert into customer(customer_id ,order_id,product_id,customer_name,phone,location,delivery_date)values(118,28,18,'arpa',01715589675,'chittagong',date '2021-03-11');
insert into customer(customer_id ,order_id,product_id,customer_name,phone,location,delivery_date)values(119,29,19,'shalik',01315579675,'bhola',date '2021-03-11');
insert into customer(customer_id ,order_id,product_id,customer_name,phone,location,delivery_date)values(110,20,10,'tanha',01715671675,'cumilla',date '2021-03-11');

--data entry to table sales


insert into sales(order_id,product_id,customer_id,quantity,s_date,delivery_status,medium_of_payment)values(21,11,111,10,date '2021-03-11','delivered','bkash');
insert into sales(order_id,product_id,customer_id,quantity,s_date,delivery_status,medium_of_payment)values(22,12,112,10,date '2021-04-11','delivered','nagad');
insert into sales(order_id,product_id,customer_id,quantity,s_date,delivery_status,medium_of_payment)values(23,13,113,12,date '2021-03-11','due','bkash');
insert into sales(order_id,product_id,customer_id,quantity,s_date,delivery_status,medium_of_payment)values(24,14,114,12,date '2021-03-22','due','nagad');
insert into sales(order_id,product_id,customer_id,quantity,s_date,delivery_status,medium_of_payment)values(25,15,115,7,date '2021-03-11','delivered','bkash');
insert into sales(order_id,product_id,customer_id,quantity,s_date,delivery_status,medium_of_payment)values(26,16,116,10,date '2021-04-11','delivered','nagad');
insert into sales(order_id,product_id,customer_id,quantity,s_date,delivery_status,medium_of_payment)values(27,17,117,8,date '2021-03-11','due','bkash');
insert into sales(order_id,product_id,customer_id,quantity,s_date,delivery_status,medium_of_payment)values(28,18,118,12,date '2021-02-22','due','COD');
insert into sales(order_id,product_id,customer_id,quantity,s_date,delivery_status,medium_of_payment)values(29,19,119,12,date '2021-03-11','due','COD');
insert into sales(order_id,product_id,customer_id,quantity,s_date,delivery_status,medium_of_payment)values(20,10,110,15,date '2021-03-22','due','COD');


--data entry to table finance

insert into finance(month,product_id ,quantity,income,restock_date)values('january',11,20,10500,date '2021-03-22');
insert into finance(month,product_id ,quantity,income,restock_date)values('february',12,15,10500,date '2021-03-22');
insert into finance(month,product_id ,quantity,income,restock_date)values('february',13,22,14500,date '2021-03-22');
insert into finance(month,product_id ,quantity,income,restock_date)values('january',14,44,10500,date '2021-03-22');
insert into finance(month,product_id ,quantity,income,restock_date)values('february',15,37,10500,date '2021-03-22');
insert into finance(month,product_id ,quantity,income,restock_date)values('february',16,28,14500,date '2021-03-22');
insert into finance(month,product_id ,quantity,income,restock_date)values('march',17,33,10500,date '2021-03-22');
insert into finance(month,product_id ,quantity,income,restock_date)values('march',18,11,10500,date '2021-03-22');
insert into finance(month,product_id ,quantity,income,restock_date)values('february',19,12,14500,date '2021-03-22');
insert into finance(month,product_id ,quantity,income,restock_date)values('february',10,11,14500,date '2021-03-22');

-- display using SELECT command
select * from inventory where price=350;

--subquery
select * from supplier where product_id=(select product_id from inventory where product_name='garlic');

--update
update inventory set product_name='ginger' where product_id=15;
update inventory set product_name='onion' where product_id=15;

--union/intersect/minus(except)
select product_name from inventory where product_name like 's%' intersect  select product_name from inventory where product_name like '%r%';

--WITH clause
with expensive(val) as (select max(price) from inventory)
select * from inventory,expensive where inventory.price=expensive.val;

--AGGREGATE FUNCTION

--count
select count(*) from customer;--rowcoumt

select count(customer_name)  as no_of_customer from customer; --using alias

--avg
select avg(price) from inventory;
--sum
select sum(income)  from finance where month='january';

--max
select max(quantity) from sales;

--group by
select company,count(product_id) from supplier group by company;

--join
select * from inventory natural join customer;
select product_name,company from inventory join supplier on inventory.product_id=supplier.product_id;
select product_name,company from inventory left outer join supplier using(product_id);
select product_id,month from inventory right outer join finance using(product_id);

select company,s_date from supplier join sales on supplier.product_id=sales.product_id;