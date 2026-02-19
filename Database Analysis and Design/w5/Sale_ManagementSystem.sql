create database Sale;
use Sale;
create table SALES_STAFF_TABLE(
	Sales_staff_code int primary key,
	Sales_staff_name varchar(50),
	Phone_number varchar(15),
	Email varchar(50)
);
create table CUSTOMER_TABLE(
	Customer_code int primary key ,
	Customer_name varchar (50),
	Customer_address varchar (100),
	Phone_number varchar (15),
	Sales_staff_code int,
	foreign key (Sales_staff_code) references Sales_staff_table(Sales_staff_code)
);
create table PRODUCT_TABLE(
	Product_code int primary key,
	Product_name varchar (50),
    -- price is xxxxxx.xx --
	Unit_price decimal (8,2) 
);
create table SALES_TABLE(
	Sales_number int primary key,
	Sales_date Date,
	Customer_code int,
	foreign key (Customer_code) references Customer_table (Customer_code)
);
create table SALES_DETAIL_TABLE (
	Sales_number int,
	Product_code int,
	Quantity int,
	primary key (Sales_number, Product_code),
	foreign key (Sales_number) references Sales_table(Sales_number),
	foreign key (Product_code) references Product_table(Product_code)
);