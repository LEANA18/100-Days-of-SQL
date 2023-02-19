#View

CREATE VIEW view_name
AS SELECT column_name
FROM table_name
WHERE condition;

mysql> CREATE VIEW TEST AS SELECT first_name FROM employee where salary=23000;
Query OK, 0 rows affected (0.30 sec)

mysql> select * from test;
+------------+
| first_name |
+------------+
| leesa      |
| irene      |
| greta      |
+------------+
3 rows in set (0.11 sec)
