 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > SELECT last_name, job_id, salary FROM employees WHERE job_id IN (1, 3)   AND salary NOT IN (4500, 10000, 15000);
+-----------+--------+----------+
| last_name | job_id | salary   |
+-----------+--------+----------+
| Sharma    |      1 | 30000.00 |
| Patel     |      3 | 28000.00 |
| Singh     |      1 | 40000.00 |
| Mehta     |      3 | 45000.00 |
| Jain      |      1 | 25000.00 |
| Shah      |      3 | 50000.00 |
| Khan      |      1 | 42000.00 |
+-----------+--------+----------+
7 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL >
