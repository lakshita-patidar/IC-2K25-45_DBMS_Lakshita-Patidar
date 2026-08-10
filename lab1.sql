Microsoft Windows [Version 10.0.26200.8875]
(c) Microsoft Corporation. All rights reserved.

C:\Users\Lenovo>mysql --version
mysql  Ver 8.0.46 for Win64 on x86_64 (MySQL Community Server - GPL)

C:\Users\Lenovo>mysql -u root -p
Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.01 sec)

mysql> create database mcadb;
Query OK, 1 row affected (0.02 sec)

mysql> use mcadb;
Database changed
mysql> create table student(r_no int,name varchar(30),class varchar(30),marks int,primary key(r_no) );
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+-----------------+
| Tables_in_mcadb |
+-----------------+
| student         |
+-----------------+
1 row in set (0.01 sec)

mysql> desc student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| r_no  | int         | NO   | PRI | NULL    |       |
| name  | varchar(30) | YES  |     | NULL    |       |
| class | varchar(30) | YES  |     | NULL    |       |
| marks | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into student(r_no,name,class,marks) values(101,'Lakshita','MCA_II',450);
Query OK, 1 row affected (0.02 sec)

mysql> insert into student(r_no,name,class,marks) values(102,'Lakshita','MCA_II',450);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student(r_no,name,class,marks) values(103,'Lakshita','MCA_II',450);
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+------+----------+--------+-------+
| r_no | name     | class  | marks |
+------+----------+--------+-------+
|  101 | Lakshita | MCA_II |   450 |
|  102 | Lakshita | MCA_II |   450 |
|  103 | Lakshita | MCA_II |   450 |
+------+----------+--------+-------+
3 rows in set (0.00 sec)

mysql> update student set name='Aman',class='MCA_II',marks=500 where r_no=103;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+------+----------+--------+-------+
| r_no | name     | class  | marks |
+------+----------+--------+-------+
|  101 | Lakshita | MCA_II |   450 |
|  102 | Lakshita | MCA_II |   450 |
|  103 | Aman     | MCA_II |   500 |
+------+----------+--------+-------+
3 rows in set (0.00 sec)

mysql> insert into student(r_no,name,class,marks) values(104,'Sam','MCA_II',300);
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+------+----------+--------+-------+
| r_no | name     | class  | marks |
+------+----------+--------+-------+
|  101 | Lakshita | MCA_II |   450 |
|  102 | Lakshita | MCA_II |   450 |
|  103 | Aman     | MCA_II |   500 |
|  104 | Sam      | MCA_II |   300 |
+------+----------+--------+-------+
4 rows in set (0.00 sec)

mysql> delete from student where r_no=104;
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+------+----------+--------+-------+
| r_no | name     | class  | marks |
+------+----------+--------+-------+
|  101 | Lakshita | MCA_II |   450 |
|  102 | Lakshita | MCA_II |   450 |
|  103 | Aman     | MCA_II |   500 |
+------+----------+--------+-------+
3 rows in set (0.00 sec)
