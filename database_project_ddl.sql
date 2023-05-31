drop table finance;
drop table sales;
drop table customer;
drop table supplier;
drop table inventory;

--creation of inventory table 

CREATE TABLE inventory (
    product_id NUMBER,
    product_name VARCHAR(255),
    price NUMBER(10, 2),
    quantity NUMBER,
    PRIMARY KEY(product_id)  
);

--creation of supplier table 

CREATE TABLE supplier (
    supplier_id NUMBER,
    product_id NUMBER,
    company VARCHAR(255),
    quantity NUMBER,
    restock_date DATE,
    reference VARCHAR(255),
    contact NUMBER,
    PRIMARY KEY(supplier_id),
    FOREIGN KEY(product_id) REFERENCES inventory
);


--creation of customer table 

CREATE TABLE customer (
    customer_id NUMBER,
    order_id NUMBER,
    product_id NUMBER,
    customer_name VARCHAR(255),
    phone NUMBER,
    location VARCHAR(255),
    delivery_date DATE,
    PRIMARY KEY(customer_id),
    FOREIGN KEY(product_id) REFERENCES inventory
);

--creation of sales table 

CREATE TABLE sales (
    order_id NUMBER,
    product_id NUMBER,
    customer_id NUMBER,
    quantity NUMBER,
    s_date DATE,
    delivery_status VARCHAR(255),
    medium_of_payment VARCHAR(255) check (medium_of_payment in ('bkash','nagad','COD')),
    PRIMARY KEY(order_id),
    FOREIGN KEY(product_id) REFERENCES inventory,
    FOREIGN KEY(customer_id) REFERENCES customer
);

--creation of finance table 

CREATE TABLE finance (
    month VARCHAR(255),
    product_id NUMBER,
    quantity NUMBER,
    income NUMBER,
    restock_date DATE,
    FOREIGN KEY(product_id) REFERENCES inventory
);


--Add column in the table
alter table inventory add company varchar(20);
--Rename the column name
alter table inventory rename column company to industry;
--Drop the column from table
alter table inventory drop column industry;