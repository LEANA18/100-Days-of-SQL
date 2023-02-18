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
