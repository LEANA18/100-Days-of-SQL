
mysql> CREATE DATABASE INSURANCE;
Query OK, 1 row affected (0.23 sec)

mysql> USE INSURANCE;
Database changed

1)Create tables

mysql> CREATE TABLE PERSON(driverid varchar(10) PRIMARY KEY,name varchar(20),address varchar(30));
Query OK, 0 rows affected (1.30 sec)

mysql> CREATE TABLE car(regno varchar(10) PRIMARY KEY,model varchar(10),year int(4));
Query OK, 0 rows affected, 1 warning (0.24 sec)

mysql> CREATE TABLE OWNS(driverid varchar(10),regno varchar(10),PRIMARY KEY(driverid,regno),FOREIGN KEY(driverid) REFERENCES PERSON(driverid),FOREIGN KEY(regno) REFERENCES car(regno));
Query OK, 0 rows affected (0.40 sec)

mysql> create table ACCIDENT(reportno int(3) PRIMARY KEY,date date,location varchar(20));
Query OK, 0 rows affected, 1 warning (0.28 sec)

mysql> CREATE TABLE PARTICIPATED(driverid varchar(10),regno varchar(10),reportno int(3),PRIMARY KEY(driverid,regno,reportno),damageamount integer,FOREIGN KEY(driverid) REFERENCES PERSON(driverid),FOREIGN KEY(regno) REFERENCES car(regno),FOREIGN KEY(reportno) REFERENCES ACCIDENT(reportno));
Query OK, 0 rows affected, 1 warning (1.20 sec)

mysql> show tables;
+---------------------+
| Tables_in_insurance |
+---------------------+
| accident            |
| car                 |
| owns                |
| participated        |
| person              |
+---------------------+
5 rows in set (0.00 sec)

2)Enter 5 tuples

mysql> insert into person values('1d','Leana','Kerala');
Query OK, 1 row affected (0.36 sec)

mysql> insert into person values('2d','Leya','Mumbai');
Query OK, 1 row affected (0.18 sec)

mysql> insert into person values('3d','Leesa','Banglore');
Query OK, 1 row affected (0.14 sec)

mysql> insert into person values('4d','Gayathri','Delhi');
Query OK, 1 row affected (0.15 sec)

mysql> insert into person values('5d','Sheeja','Pune');
Query OK, 1 row affected (0.15 sec)

mysql> select * from person;
+----------+----------+----------+
| driverid | name     | address  |
+----------+----------+----------+
| 1d       | Leana    | Kerala   |
| 2d       | Leya     | Mumbai   |
| 3d       | Leesa    | Banglore |
| 4d       | Gayathri | Delhi    |
| 5d       | Sheeja   | Pune     |
+----------+----------+----------+
5 rows in set (0.00 sec)

mysql> insert into car values('1c','alto',2002);
Query OK, 1 row affected (0.06 sec)

mysql> insert into car values('2c','santro',2002);
Query OK, 1 row affected (0.16 sec)

mysql> insert into car values('3c','kia',2020);
Query OK, 1 row affected (0.15 sec)

mysql> insert into car values('3c','swift',2008);
ERROR 1062 (23000): Duplicate entry '3c' for key 'car.PRIMARY'
mysql> insert into car values('4c','swift',2008);
Query OK, 1 row affected (0.14 sec)

mysql> insert into car values('5c','i10',2012);
Query OK, 1 row affected (0.14 sec)

mysql> select * from car;
+-------+--------+------+
| regno | model  | year |
+-------+--------+------+
| 1c    | alto   | 2002 |
| 2c    | santro | 2002 |
| 3c    | kia    | 2020 |
| 4c    | swift  | 2008 |
| 5c    | i10    | 2012 |
+-------+--------+------+
5 rows in set (0.00 sec)

mysql> insert into owns values('1d','1c');
Query OK, 1 row affected (0.90 sec)

mysql> insert into owns values('2d','2c');
Query OK, 1 row affected (0.06 sec)

mysql> insert into owns values('3d','3c');
Query OK, 1 row affected (0.12 sec)

mysql> insert into owns values('4d','4c');
Query OK, 1 row affected (0.04 sec)

mysql> insert into owns values('5d','5c');
Query OK, 1 row affected (0.14 sec)

mysql> select * from owns;
+----------+-------+
| driverid | regno |
+----------+-------+
| 1d       | 1c    |
| 2d       | 2c    |
| 3d       | 3c    |
| 4d       | 4c    |
| 5d       | 5c    |
+----------+-------+
5 rows in set (0.00 sec)

mysql> insert into accident values('1r','2002-06-12','Kollam');
ERROR 1265 (01000): Data truncated for column 'reportno' at row 1
mysql> insert into accident values(100,'2002-06-12','Kollam');
Query OK, 1 row affected (0.12 sec)

mysql> insert into accident values(200,'2020-06-12','dhward');
Query OK, 1 row affected (0.07 sec)

mysql> insert into accident values(300,'2021-06-12','Banglore');
Query OK, 1 row affected (1.11 sec)

mysql> insert into accident values(400,'2009-06-12','hubli');
Query OK, 1 row affected (0.15 sec)

mysql> insert into accident values(500,'2012-06-12','gadag');
Query OK, 1 row affected (0.14 sec)

mysql> select * from accident;
+----------+------------+----------+
| reportno | date       | location |
+----------+------------+----------+
|      100 | 2002-06-12 | Kollam   |
|      200 | 2020-06-12 | dhward   |
|      300 | 2021-06-12 | Banglore |
|      400 | 2009-06-12 | hubli    |
|      500 | 2012-06-12 | gadag    |
+----------+------------+----------+
5 rows in set (0.00 sec)

mysql> insert into participated values('1d','1c',100,100000);
Query OK, 1 row affected (0.13 sec)

mysql> insert into participated values('2d','2c',200,12300);
Query OK, 1 row affected (0.13 sec)

mysql> insert into participated values('3d','3c',300,1200);
Query OK, 1 row affected (0.13 sec)

mysql> insert into participated values('4d','4c',400,60000);
Query OK, 1 row affected (0.14 sec)

mysql> insert into participated values('5d','5c',500,240000);
Query OK, 1 row affected (0.12 sec)

mysql> select * from participated;
+----------+-------+----------+--------------+
| driverid | regno | reportno | damageamount |
+----------+-------+----------+--------------+
| 1d       | 1c    |      100 |       100000 |
| 2d       | 2c    |      200 |        12300 |
| 3d       | 3c    |      300 |         1200 |
| 4d       | 4c    |      400 |        60000 |
| 5d       | 5c    |      500 |       240000 |
+----------+-------+----------+--------------+
5 rows in set (0.00 sec)

3)Update the damage amount for the car with a specific Regno in the accident with report number to 25000

mysql> update participated set damageamount=25000 where regno='1c' and reportno=100;
Query OK, 1 row affected (0.19 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from participated;
+----------+-------+----------+--------------+
| driverid | regno | reportno | damageamount |
+----------+-------+----------+--------------+
| 1d       | 1c    |      100 |        25000 |
| 2d       | 2c    |      200 |        12300 |
| 3d       | 3c    |      300 |         1200 |
| 4d       | 4c    |      400 |        60000 |
| 5d       | 5c    |      500 |       240000 |
+----------+-------+----------+--------------+
5 rows in set (0.00 sec)

4)Add a new accident to database

mysql> insert into accident values(600,'2021-09-23','agra');
Query OK, 1 row affected (0.14 sec)

mysql> insert into participated values('3d','3c',600,9000);
Query OK, 1 row affected (0.13 sec)

mysql> select * from accident;
+----------+------------+----------+
| reportno | date       | location |
+----------+------------+----------+
|      100 | 2002-06-12 | Kollam   |
|      200 | 2020-06-12 | dhward   |
|      300 | 2021-06-12 | Banglore |
|      400 | 2009-06-12 | hubli    |
|      500 | 2012-06-12 | gadag    |
|      600 | 2021-09-23 | agra     |
+----------+------------+----------+
6 rows in set (0.00 sec)

mysql> select * from participated;
+----------+-------+----------+--------------+
| driverid | regno | reportno | damageamount |
+----------+-------+----------+--------------+
| 1d       | 1c    |      100 |        25000 |
| 2d       | 2c    |      200 |        12300 |
| 3d       | 3c    |      300 |         1200 |
| 3d       | 3c    |      600 |         9000 |
| 4d       | 4c    |      400 |        60000 |
| 5d       | 5c    |      500 |       240000 |
+----------+-------+----------+--------------+
6 rows in set (0.00 sec)

5)Find the total number of people who owned cars that were involved in accidents in 2002.

mysql> select distinct count(participated.driverid) as "Total_no_of_people" from accident,participated where accident.reportno=participated.reportno and accident.date between '2002-01-01' and '2002-12-31';
+--------------------+
| Total_no_of_people |
+--------------------+
|                  1 |
+--------------------+
1 row in set (0.00 sec)

6)Find the total no of accidents in which cars belonging to specific model were involved

mysql> select count(participated.regno) as "Total_no_of_accidents" from participated,car where car.regno=participated.regno and car.model='alto';
+-----------------------+
| Total_no_of_accidents |
+-----------------------+
|                     1 |
+-----------------------+
1 row in set (0.00 sec)
