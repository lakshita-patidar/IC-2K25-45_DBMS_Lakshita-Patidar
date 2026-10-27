 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > SELECT first_name, last_name, department_id
                                                  -> FROM employees
                                                  -> WHERE department_id IN (30, 100)
                                                  -> ORDER BY department_id ASC;
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Neha       | Singh     |            30 |
| Karan      | Mehta     |            30 |
| Vikas      | Shah      |            30 |
+------------+-----------+---------------+
3 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL >
