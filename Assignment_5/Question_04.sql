 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > SELECT first_name, last_name
                                                  -> FROM employees
                                                  -> WHERE employee_id IN (
                                                  ->     SELECT manager_id
                                                  ->     FROM employees
                                                  -> );
Empty set (0.0202 sec)
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL >
