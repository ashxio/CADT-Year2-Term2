create database Mail_Order;
use Mail_Order;
create table EMPLOYEE(
	SSN varchar(10) primary key,
	Fname varchar(50),
	Lname varchar(50),
	ZIP varchar(10)
);
create table CUSTOMER(
	CNumber int primary key,
	FName varchar(50),
	LName varchar(50),
	ZIPCode varchar(10)
);
create table CORDER(
	OrderNo int primary key,
	Receipt_Date date,
	Expected_Date date,
	Actual_Date date
);
create table PART(
	Number int primary key,
	Name varchar(50),
	Price float,
	Quantity int
);
create table ORDERS(
	OrderNo int,
	PartNo int,
	Quantity int,
    
    foreign key (OrderNo) references CORDER(OrderNo),
    foreign key (PartNo) references PART(Number)
);
create table CUSTOMER_ORDERS(
	employee varchar(50),
	Customer int,
	OrderNo int,
    
   foreign key (employee) references EMPLOYEE(SSN),
   foreign key (Customer) references Customer(CNumber),
   foreign key (OrderNo) references CORDER(OrderNo)
);
show tables;
