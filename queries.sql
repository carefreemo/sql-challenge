-- 1. List the employee number, last name, first name, sex, and salary of each employee
-- Need employees and salaries
CREATE VIEW question1innerjoinfinal AS
SELECT employees.emp_no, employees.last_name, employees.first_name, 
employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT * 
FROM question1innerjoinfinal;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986
-- Need employees
CREATE VIEW question2 AS
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date 
BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

SELECT *
FROM question2;

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name
-- Need departments, dept_manager, and employees
CREATE VIEW question3 AS
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, 
employees.last_name, employees.first_name
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;

SELECT * 
FROM question3;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
-- Need dept_emp, employees, and departments
CREATE VIEW question4 AS
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

SELECT * 
FROM question4;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
-- Need employees

CREATE VIEW question5 AS
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT *
FROM question5;

-- 6. List each employee in the Sales department, including their employee number, last name, and first name
-- Need departments, departments_emp, and employees

CREATE VIEW question6 AS
SELECT departments.dept_name, employees.last_name, employees.first_name
FROM departments
JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
JOIN employees
ON employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales';

SELECT *
FROM question6;

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
-- Need departments, departments_emp, and employees

CREATE VIEW question7 AS
SELECT departments.dept_name, employees.last_name, employees.first_name,
employees.emp_no
FROM departments
JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
JOIN employees
ON employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name ='Development';

SELECT *
FROM question7;


-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
-- Need employees

CREATE VIEW question8 AS
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;

SELECT *
FROM question8;

