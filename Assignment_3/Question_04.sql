 MySQL  localhost:33060+ ssl  SQL > use dbms_assignment;
Default schema set to `dbms_assignment`.
Fetching global names, object names from `dbms_assignment` for auto-completion... Press ^C to stop.
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > show tables;
+---------------------------+
| Tables_in_dbms_assignment |
+---------------------------+
| countries_null            |
| department                |
| dup_countries             |
| employee                  |
| employees                 |
| job_histry                |
| jobs                      |
+---------------------------+
7 rows in set (0.0024 sec)
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > select*from employees;
+-------------+------------+-----------+------------------+--------------+------------+--------+----------+------------+------------+---------------+
| employee_id | first_name | last_name | email            | phone_number | hire_date  | job_id | salary   | commission | manager_id | department_id |
+-------------+------------+-----------+------------------+--------------+------------+--------+----------+------------+------------+---------------+
|           1 | Rahul      | Sharma    | rahul@gmail.com  | 9876543210   | 2023-01-10 |      1 | 30000.00 |    2000.00 |        101 |            10 |
|           2 | Priya      | Verma     | priya@gmail.com  | 9876543211   | 2023-02-15 |      2 | 35000.00 |    2500.00 |        102 |            20 |
|           3 | Aman       | Patel     | aman@gmail.com   | 9876543212   | 2023-03-20 |      3 | 28000.00 |    1500.00 |        101 |            10 |
|           4 | Neha       | Singh     | neha@gmail.com   | 9876543213   | 2023-04-05 |      1 | 40000.00 |    3000.00 |        103 |            30 |
|           5 | Riya       | Gupta     | riya@gmail.com   | 9876543214   | 2023-05-12 |      2 | 32000.00 |    2200.00 |        102 |            20 |
|           6 | Karan      | Mehta     | karan@gmail.com  | 9876543215   | 2023-06-18 |      3 | 45000.00 |    3500.00 |        103 |            30 |
|           7 | Ankit      | Jain      | ankit@gmail.com  | 9876543216   | 2023-07-22 |      1 | 25000.00 |    1000.00 |        101 |            10 |
|           8 | Pooja      | Yadav     | pooja@gmail.com  | 9876543217   | 2023-08-10 |      2 | 38000.00 |    2800.00 |        102 |            20 |
|           9 | Vikas      | Shah      | vikas@gmail.com  | 9876543218   | 2023-09-14 |      3 | 50000.00 |    4000.00 |        103 |            30 |
|          10 | Simran     | Khan      | simran@gmail.com | 9876543219   | 2023-10-25 |      1 | 42000.00 |    3200.00 |        101 |            10 |
+-------------+------------+-----------+------------------+--------------+------------+--------+----------+------------+------------+---------------+
10 rows in set (0.0025 sec)
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > select first_name , last_name , hire_date from employees;
+------------+-----------+------------+
| first_name | last_name | hire_date  |
+------------+-----------+------------+
| Rahul      | Sharma    | 2023-01-10 |
| Priya      | Verma     | 2023-02-15 |
| Aman       | Patel     | 2023-03-20 |
| Neha       | Singh     | 2023-04-05 |
| Riya       | Gupta     | 2023-05-12 |
| Karan      | Mehta     | 2023-06-18 |
| Ankit      | Jain      | 2023-07-22 |
| Pooja      | Yadav     | 2023-08-10 |
| Vikas      | Shah      | 2023-09-14 |
| Simran     | Khan      | 2023-10-25 |
+------------+-----------+------------+
10 rows in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > select first_name , last_name , hire_date from employees where hire_date => 1987;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=> 1987' at line 1
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > select first_name , last_name , hire_date from employees where hire_date>= 1987;
+------------+-----------+------------+
| first_name | last_name | hire_date  |
+------------+-----------+------------+
| Rahul      | Sharma    | 2023-01-10 |
| Priya      | Verma     | 2023-02-15 |
| Aman       | Patel     | 2023-03-20 |
| Neha       | Singh     | 2023-04-05 |
| Riya       | Gupta     | 2023-05-12 |
| Karan      | Mehta     | 2023-06-18 |
| Ankit      | Jain      | 2023-07-22 |
| Pooja      | Yadav     | 2023-08-10 |
| Vikas      | Shah      | 2023-09-14 |
| Simran     | Khan      | 2023-10-25 |
+------------+-----------+------------+
10 rows in set, 1 warning (0.0045 sec)
Warning (code 1292): Incorrect date value: '1987' for column 'hire_date' at row 1
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > select first_name , last_name , hire_date from employees where hire_date=< 1987;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=< 1987' at line 1
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > select first_name , last_name , hire_date from employees where hire_date<= 1987;
Empty set, 1 warning (0.0016 sec)
Warning (code 1292): Incorrect date value: '1987' for column 'hire_date' at row 1
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL >
