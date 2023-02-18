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
