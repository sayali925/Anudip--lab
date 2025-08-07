mysql>  create table employee(emp_id int(10) primary key,Firstname varchar(50),Lastname varchar(50),salary decimal(10,2));
Query OK, 0 rows affected, 1 warning (0.11 sec)

mysql> show tables;
+--------------------+
| Tables_in_employee |
+--------------------+
| employee           |
+--------------------+
1 row in set (0.01 sec)

mysql> select *from employee;
Empty set (0.01 sec)

mysql> desc employee;
+-----------+---------------+------+-----+---------+-------+
| Field     | Type          | Null | Key | Default | Extra |
+-----------+---------------+------+-----+---------+-------+
| emp_id    | int           | NO   | PRI | NULL    |       |
| Firstname | varchar(50)   | YES  |     | NULL    |       |
| Lastname  | varchar(50)   | YES  |     | NULL    |       |
| salary    | decimal(10,2) | YES  |     | NULL    |       |
+-----------+---------------+------+-----+---------+-------+
4 rows in set (0.04 sec)

mysql> insert into employee(emp_id,Firstname,lastname,salary)values(101,'sayali','bane'20000),(102,'amit','pawar',30000),(103,'ravi','sharma',40000),(104,'sahil','yadav',50000),(105,'divya','jamadar',48000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '20000),(102,'amit','pawar',30000),(103,'ravi','sharma',40000),(104,'sahil','yada' at line 1
mysql> insert into employee(emp_id,Firstname,lastname,salary)values(101,'sayali','bane',20000),(102,'amit','pawar',30000),(103,'ravi','sharma',40000),(104,'sahil','yadav',50000),(105,'divya','jamadar',48000);
Query OK, 5 rows affected (0.16 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee;
+--------+-----------+----------+----------+
| emp_id | Firstname | Lastname | salary   |
+--------+-----------+----------+----------+
|    101 | sayali    | bane     | 20000.00 |
|    102 | amit      | pawar    | 30000.00 |
|    103 | ravi      | sharma   | 40000.00 |
|    104 | sahil     | yadav    | 50000.00 |
|    105 | divya     | jamadar  | 48000.00 |
+--------+-----------+----------+----------+
5 rows in set (0.04 sec)

mysql> alter table employee add department varchar(50);
Query OK, 0 rows affected (0.17 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from employee;
+--------+-----------+----------+----------+------------+
| emp_id | Firstname | Lastname | salary   | department |
+--------+-----------+----------+----------+------------+
|    101 | sayali    | bane     | 20000.00 | NULL       |
|    102 | amit      | pawar    | 30000.00 | NULL       |
|    103 | ravi      | sharma   | 40000.00 | NULL       |
|    104 | sahil     | yadav    | 50000.00 | NULL       |
|    105 | divya     | jamadar  | 48000.00 | NULL       |
+--------+-----------+----------+----------+------------+
5 rows in set (0.00 sec)

mysql> update employee set department='HR' where emp_id=1;
Query OK, 0 rows affected (0.02 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select *from employee;
+--------+-----------+----------+----------+------------+
| emp_id | Firstname | Lastname | salary   | department |
+--------+-----------+----------+----------+------------+
|    101 | sayali    | bane     | 20000.00 | NULL       |
|    102 | amit      | pawar    | 30000.00 | NULL       |
|    103 | ravi      | sharma   | 40000.00 | NULL       |
|    104 | sahil     | yadav    | 50000.00 | NULL       |
|    105 | divya     | jamadar  | 48000.00 | NULL       |
+--------+-----------+----------+----------+------------+
5 rows in set (0.00 sec)

mysql> update employee set department='HR' where emp_id=101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from employee;
+--------+-----------+----------+----------+------------+
| emp_id | Firstname | Lastname | salary   | department |
+--------+-----------+----------+----------+------------+
|    101 | sayali    | bane     | 20000.00 | HR         |
|    102 | amit      | pawar    | 30000.00 | NULL       |
|    103 | ravi      | sharma   | 40000.00 | NULL       |
|    104 | sahil     | yadav    | 50000.00 | NULL       |
|    105 | divya     | jamadar  | 48000.00 | NULL       |
+--------+-----------+----------+----------+------------+
5 rows in set (0.00 sec)

mysql> update employee set department='finance' where emp_id=102;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee set department='IT' where emp_id=103;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee set department='sales' where emp_id=104;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee set department='Marketing' where emp_id=105;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from employee;
+--------+-----------+----------+----------+------------+
| emp_id | Firstname | Lastname | salary   | department |
+--------+-----------+----------+----------+------------+
|    101 | sayali    | bane     | 20000.00 | HR         |
|    102 | amit      | pawar    | 30000.00 | finance    |
|    103 | ravi      | sharma   | 40000.00 | IT         |
|    104 | sahil     | yadav    | 50000.00 | sales      |
|    105 | divya     | jamadar  | 48000.00 | Marketing  |
+--------+-----------+----------+----------+------------+
5 rows in set (0.00 sec)

mysql> select Firstname,Lastname,department from employee where salary > 30000;
+-----------+----------+------------+
| Firstname | Lastname | department |
+-----------+----------+------------+
| ravi      | sharma   | IT         |
| sahil     | yadav    | sales      |
| divya     | jamadar  | Marketing  |
+-----------+----------+------------+
3 rows in set (0.02 sec)