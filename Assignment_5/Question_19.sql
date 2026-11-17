 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > SELECT d.department_id, d.department_name
                                                  -> FROM departments d
                                                  -> LEFT JOIN employees e
                                                  ->     ON d.department_id = e.department_id
                                                  -> WHERE e.employee_id IS NULL;
ERROR: 1146: Table 'dbms_assignment.departments' doesn't exist
 MySQL  localhost:33060+ ssl  dbms_assignment  SQL > SELECT d.department_id, d.department_name FROM employees d LEFT JOIN employees e     ON d.department_id = e.department_id WHERE e.employee_id IS NULL;
