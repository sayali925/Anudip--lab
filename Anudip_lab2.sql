Database Schema: Consider a simple database with one tables: BankAccount BankAccount 
mysql> create database BankAccount;
mysql> use BankAccount;
Database changed
Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance 
mysql> create table BankAccount(account_id int(10) primary key,account_holder_name varchar(50) not null,account_balance int(10) not null);

mysql> desc BankAccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | int         | NO   | PRI | NULL    |       |
| account_holder_name | varchar(50) | NO   |     | NULL    |       |
| account_balance     | int         | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table.
mysql> insert into bankAccount(account_id,account_holder_name,account_balance)values(101,'yash',40000),(102,'lavanya',50000),(103,'jyoti',60000),(104,'sahil',70000),(105,'sagar',80000);
Query OK, 5 rows affected (0.06 sec)

mysql> select * from  BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | yash                |           40000 |
|        102 | lavanya             |           50000 |
|        103 | jyoti               |           60000 |
|        104 | sahil               |           70000 |
|        105 | sagar               |           80000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)
Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.
mysql> select account_holder_name,account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| yash                |           40000 |
| lavanya             |           50000 |
| jyoti               |           60000 |
| sahil               |           70000 |
| sagar               |           80000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 

mysql> select account_holder_name,account_balance from BankAccount where account_balance >30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| yash                |           40000 |
| lavanya             |           50000 |
| jyoti               |           60000 |
| sahil               |           70000 |
| sagar               |           80000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from BankAccount where account_balance >40000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| lavanya             |           50000 |
| jyoti               |           60000 |
| sahil               |           70000 |
| sagar               |           80000 |
+---------------------+-----------------+
4 rows in set (0.00 sec)
Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.
mysql> update BankAccount set account_balance=30000 where account_id=101;

mysql> select * from  BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | yash                |           30000 |
|        102 | lavanya             |           50000 |
|        103 | jyoti               |           60000 |
|        104 | sahil               |           70000 |
|        105 | sagar               |           80000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql>