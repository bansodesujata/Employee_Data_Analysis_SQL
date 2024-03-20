/*Task to be performed:                            

1. Write a query to create an employee table with the fields employee id, first name, last name, job id, 
salary, manager id, and department id.*/

/*ANS: Excel file has been imported*/ 

ALTER TABLE emp_details.employee_datasets
MODIFY COLUMN EMP_ID VARCHAR (10) NOT NULL PRIMARY KEY;

ALTER TABLE emp_details.employee_datasets
MODIFY COLUMN F_NAME VARCHAR (40) NOT NULL,
MODIFY COLUMN L_NAME VARCHAR (40) NOT NULL, 
MODIFY COLUMN JOB_ID VARCHAR (40) NOT NULL,
MODIFY COLUMN SALARY VARCHAR (40) NOT NULL,
MODIFY COLUMN MANAGER_ID VARCHAR (10) NOT NULL,
MODIFY COLUMN DEPT_ID VARCHAR (40) NOT NULL;

/* 2. Write a query to insert values into the employee table.*/

INSERT INTO emp_details.employee_datasets (EMP_ID,F_NAME,L_NAME,JOB_ID,SALARY,MANAGER_ID,DEPT_ID)
VALUES ("E202","SANDY","PAWAR","56","70000","M507","D88");

/* 3. Write a query to find the first name and salary of the employee whose salary is higher than the employee 
with the last name Kumar from the employee table. */

SELECT F_NAME, SALARY
FROM employee_datasets
WHERE SALARY > ( SELECT SALARY
				 FROM employee_datasets
                 WHERE L_NAME = "KUMAR"
                 LIMIT 1
				)
ORDER BY SALARY DESC
LIMIT 1;


/*4. Write a query to display the employee id and last name of the employee whose salary
 is greater than the average salary from the employee table.*/
 
 SELECT EMP_ID, L_NAME
 FROM employee_datasets
 WHERE SALARY > 
			(SELECT AVG(SALARY) FROM employee_datasets);
            
/* 5. Write a query to display the employee id, first name, and salary of the employees who 
earn a salary that is higher than the salary of all the shipping clerks (JOB_ID = HP122). 
Sort the results of the salary in ascending order.  */
          
SELECT EMP_ID, F_NAME, SALARY
FROM employee_datasets
WHERE SALARY > ALL ( SELECT SALARY FROM employee_datasets
                 WHERE JOB_ID = "HP122")
ORDER BY SALARY ASC;


/*6. Write a query to display the first name, employee id, and salary of the first three employees with highest salaries.*/

SELECT EMP_ID, F_NAME, SALARY
FROM employee_datasets
order by salary asc
limit 3; 






