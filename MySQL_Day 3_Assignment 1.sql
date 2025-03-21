Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.02 sec)

mysql> use ecommerce;
Database changed
mysql> create table Employee(emp_id int primary key not null, first_name varchar(50) not null, last_name varchar(50) not null, age int, email varchar (100) not null);
Query OK, 0 rows affected (0.07 sec)

mysql> insert into Employee values (1, 'Shraddha', 'Chougule', 28, 'shraddha@gmail.com'),(2, 'Suchita', 'Shinde', 35, 'Suchita@gmail.com'), (3, 'Ashwini', '
Pawar', 40, 'ashwini@gmail.com'), (4, 'Pranali', 'Kalokhe', 22, 'pranali@gmail.com'), (5, 'Vanshay', 'Kulkarni', 29, 'vanshay@gmail.com'), (6, 'Ganesh', 'Sh
ejule', 31, 'ganesh@gmail.com'), (7, 'Rushikesh', 'Patil', 45, 'rushikesh@gmail.com'), (8, 'Amaan', 'Shaikh', 26, 'amaan@gmail.com'), (9, 'Aditya', 'Singh',
 33, 'aditya@gmail.com'), (10, 'Priti', 'Jadhav', 27, 'priti@gmail.com');
Query OK, 10 rows affected (0.02 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select first_name, last_name from Employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Shraddha   | Chougule  |
| Suchita    | Shinde    |
| Ashwini    | Pawar     |
| Pranali    | Kalokhe   |
| Vanshay    | Kulkarni  |
| Ganesh     | Shejule   |
| Rushikesh  | Patil     |
| Amaan      | Shaikh    |
| Aditya     | Singh     |
| Priti      | Jadhav    |
+------------+-----------+
10 rows in set (0.00 sec)

mysql> select first_name, last_name, age from Employee where age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Suchita    | Shinde    |   35 |
| Ashwini    | Pawar     |   40 |
| Ganesh     | Shejule   |   31 |
| Rushikesh  | Patil     |   45 |
| Aditya     | Singh     |   33 |
+------------+-----------+------+
5 rows in set (0.01 sec)

mysql> update Employee set age = age+1 where age>25;
Query OK, 9 rows affected (0.02 sec)
Rows matched: 9  Changed: 9  Warnings: 0

mysql> select * from Employee;
+--------+------------+-----------+------+---------------------+
| emp_id | first_name | last_name | age  | email               |
+--------+------------+-----------+------+---------------------+
|      1 | Shraddha   | Chougule  |   29 | shraddha@gmail.com  |
|      2 | Suchita    | Shinde    |   36 | Suchita@gmail.com   |
|      3 | Ashwini    | Pawar     |   41 | ashwini@gmail.com   |
|      4 | Pranali    | Kalokhe   |   22 | pranali@gmail.com   |
|      5 | Vanshay    | Kulkarni  |   30 | vanshay@gmail.com   |
|      6 | Ganesh     | Shejule   |   32 | ganesh@gmail.com    |
|      7 | Rushikesh  | Patil     |   46 | rushikesh@gmail.com |
|      8 | Amaan      | Shaikh    |   27 | amaan@gmail.com     |
|      9 | Aditya     | Singh     |   34 | aditya@gmail.com    |
|     10 | Priti      | Jadhav    |   28 | priti@gmail.com     |
+--------+------------+-----------+------+---------------------+
10 rows in set (0.00 sec)