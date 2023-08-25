--create database pj1

--SET DATEFORMAT ymd;  

create table train(
id int not null primary key,
date date not null,
store_nbr int not null,
family nchar(30),
sales float,
onpromotion int)

create table oil(
date date primary key not null,
dcoilwtico float)

create table stores(
store_nbr int primary key not null,
city nchar(30),
state nchar(30),
type nchar(30),
cluster int)

create table holidays_events(
date date not null,
type nchar(20),
locale nchar(30),
locale_name nchar(30),
description nchar(50),
transferred nchar(10))

create table transactions(
date date not null,
store_nbr int not null,
transactions int not null,
primary key(date, store_nbr,transactions)
)




BULK INSERT dbo.train
FROM 'D:\University\Project\PJ1\Data\train.csv'
WITH (FORMAT='CSV',
FIRSTROW=2,
FIELDTERMINATOR=',',
ROWTERMINATOR='0x0a');

BULK INSERT dbo.oil
FROM 'D:\University\Project\PJ1\Data\oil.csv'
WITH (FORMAT='CSV',
FIRSTROW=2,
FIELDTERMINATOR=',',
ROWTERMINATOR='0x0a');

BULK INSERT dbo.stores
FROM 'D:\University\Project\PJ1\Data\stores.csv'
WITH (FORMAT='CSV',
FIRSTROW=2,
FIELDTERMINATOR=',',
ROWTERMINATOR='0x0a');

BULK INSERT dbo.holidays_events
FROM 'D:\University\Project\PJ1\Data\holidays_events.csv'
WITH (FORMAT='CSV',
FIRSTROW=2,
FIELDTERMINATOR=',',
ROWTERMINATOR='0x0a');

BULK INSERT dbo.transactions
FROM 'D:\University\Project\PJ1\Data\transactions.csv'
WITH (FORMAT='CSV',
FIRSTROW=2,
FIELDTERMINATOR=',',
ROWTERMINATOR='0x0a');
