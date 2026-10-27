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
| mcadb              |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use mcadb;
Database changed

QUESTION 1 :-

mysql> create table countries(country_id int,country_name varchar(30),region_id int, primary key(country_id));
Query OK, 0 rows affected (0.06 sec)

mysql> show tables;
+-----------------+
| Tables_in_mcadb |
+-----------------+
| countries       |
| student         |
+-----------------+
2 rows in set (0.03 sec)

mysql> desc countries;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | NO   | PRI | NULL    |       |
| country_name | varchar(30) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> insert into countries(country_id,country_name,region_id) values(1,'India',1);
Query OK, 1 row affected (0.03 sec)

mysql> insert into countries(country_id,country_name,region_id) values(2,'United States',2);
Query OK, 1 row affected (0.01 sec)

mysql> insert into countries(country_id,country_name,region_id) values(3,'United Kingdom',3);
Query OK, 1 row affected (0.01 sec)

mysql> insert into countries(country_id,country_name,region_id) values(4,'Japan',4);
Query OK, 1 row affected (0.02 sec)

mysql> insert into countries(country_id,country_name,region_id) values(5,'Germany',5);
Query OK, 1 row affected (0.02 sec)

mysql> select * from countries;
+------------+----------------+-----------+
| country_id | country_name   | region_id |
+------------+----------------+-----------+
|          1 | India          |         1 |
|          2 | United States  |         2 |
|          3 | United Kingdom |         3 |
|          4 | Japan          |         4 |
|          5 | Germany        |         5 |
+------------+----------------+-----------+
5 rows in set (0.00 sec)

QUESTION 2 :-

mysql> create table if not exists countries(country_id int,country_name varchar(30),region_id int,primary key(country_id));
Query OK, 0 rows affected, 1 warning (0.01 sec)

QUESTION 3 :-

mysql> create table dup_countries like countries;
Query OK, 0 rows affected (0.04 sec)

mysql> desc dup_countries;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | NO   | PRI | NULL    |       |
| country_name | varchar(30) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

QUESTION 4 :-

mysql> create table dup_countries as select * from countries;
ERROR 1050 (42S01): Table 'dup_countries' already exists

mysql> drop table dup_countries;
Query OK, 0 rows affected (0.03 sec)

mysql> create table dup_countries as select * from countries;
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from dup_countries;
+------------+----------------+-----------+
| country_id | country_name   | region_id |
+------------+----------------+-----------+
|          1 | India          |         1 |
|          2 | United States  |         2 |
|          3 | United Kingdom |         3 |
|          4 | Japan          |         4 |
|          5 | Germany        |         5 |
+------------+----------------+-----------+
5 rows in set (0.01 sec)

QUESTION 5 :-

mysql> alter table countries modify country_name varchar(30) null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table countries modify region_id int null;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

QUESTION 6 :-

mysql> create table jobs(job_id int,job_title varchar(50),min_salary int,max_salary int, check(max_salary <= 25000));
Query OK, 0 rows affected (0.03 sec)

mysql> desc jobs;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| job_id     | int         | YES  |     | NULL    |       |
| job_title  | varchar(50) | YES  |     | NULL    |       |
| min_salary | int         | YES  |     | NULL    |       |
| max_salary | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

QUESTION 7 :-

mysql> drop table countries;
Query OK, 0 rows affected (0.02 sec)

mysql> create table countries(country_id int,country_name varchar(50),region_id int, check(country_name in ('Italy','India','China')));
Query OK, 0 rows affected (0.03 sec)

QUESTION 8 :-

mysql> create table job_history(employee_id int, start_date date, end_date date, job_id int ,department_id int);
Query OK, 0 rows affected (0.03 sec)

mysql> select date_format(end_date,'%d-%m-%y') from job_history;
Empty set (0.02 sec)

QUESTION 9 :-

mysql> drop table countries;
Query OK, 0 rows affected (0.02 sec)

mysql> create table countries(country_id int,country_name varchar(50),region_id int,primary key(country_id));
Query OK, 0 rows affected (0.03 sec)

QUESTION 10 :-

mysql> drop table jobs;
Query OK, 0 rows affected (0.03 sec)

mysql> create table jobs(job_id int, job_title varchar(50) default' ',min_salary int default 8000,max_salary int default null);
Query OK, 0 rows affected (0.04 sec)

QUESTION 11 :-

mysql> drop table countries;
Query OK, 0 rows affected (0.03 sec)

mysql> create table countries(country_id int,country_name varchar(50),region_id int,primary key(country_id));
Query OK, 0 rows affected (0.03 sec)

QUESTION 12 :-

mysql> drop table countries;
Query OK, 0 rows affected (0.03 sec)

mysql> create table countries(country_id int auto_increment,country_name varchar(50),region_id int,primary key(country_id));
Query OK, 0 rows affected (0.05 sec)

QUESTION 13 :-

mysql> drop table countries;
Query OK, 0 rows affected (0.03 sec)

mysql> create table countries(country_id int ,country_name varchar(50),region_id int,primary key(country_id,region_id));
Query OK, 0 rows affected (0.03 sec)

QUESTION 14 :-

mysql> drop table job_history;
Query OK, 0 rows affected (0.02 sec)

mysql> drop table jobs;
Query OK, 0 rows affected (0.02 sec)

mysql> create table jobs(job_id varchar(10) primary key ,job_title varchar(35) not null,min_salary decimal(6,0),max_salary decimal(6,0));
Query OK, 0 rows affected (0.03 sec)

mysql> create table job_history(employee_id int unique,start_date date,end_date date,job_id varchar(10),department_id int,foreign key(job_id) references jobs(job_id));
Query OK, 0 rows affected (0.06 sec)

QUESTION 15 :-

mysql> create table departments(department_id decimal(4,0),department_name varchar(30) not null,manager_id decimal(6,0),location_id decimal(4,0), primary key(department_id,manager_id));
Query OK, 0 rows affected (0.03 sec)

mysql> create table employees(employee_id int unique,first_name varchar(20),last_name varchar(25),email varchar(50),phone_number varchar(20),hire_date date, job_id varchar(10), salary decimal(8,2), commission decimal(8,2), manager_id decimal(6,0) ,department_id decimal (4,0), foreign key(department_id,manager_id)references departments(department_id,manager_id));
Query OK, 0 rows affected (0.06 sec)








