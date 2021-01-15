--1. List the following details of each employee: 
--employee number, last name, first name, sex, and salary.
--Peform INNER JOIN on employees and salaries tables
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees
ON employees.emp_no = salaries.emp_no;

--2. List first name, last name, and hire date 
--for employees who were hired in 1986.
--Perform QUERY on employees table
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
--Perform INNER JOIN on employees, departments and dept_manager ON dept_no
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM employees
	INNER JOIN dept_manager 
		ON (employees.emp_no = dept_manager.emp_no)
	INNER JOIN departments 
		ON (dept_manager.dept_no = departments.dept_no)
ORDER BY departments.dept_no ASC;

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
--Perform INNER JOIN on employees and dept_emp
SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no
FROM employees
	INNER JOIN dept_emp
		ON (employees.emp_no = dept_emp.emp_no)
ORDER BY dept_emp.dept_no ASC, employees.emp_no ASC;

--5. List first name, last name, and sex for employees 
--whose first name is "Hercules" and last names begin with "B."
--Perform SELECT to get columns and QUERY to find employee whose name matches search
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name ASC;

--6. List all employees in the Sales department, including their:
--employee number, last name, first name, and department name.
--Perform an INNER JOIN on employees, departments & dept_emp and SUB QUERY for just the sales dept
--INNER JOIN
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.Dept_name
FROM employees
	INNER JOIN dept_emp
		ON (employees.emp_no = dept_emp.emp_no)
	INNER JOIN departments
		ON (dept_emp.dept_no = departments.dept_no)
--SUB QUERY
WHERE departments.dept_name = 'Sales'
--ORDER BY for a more refined search
ORDER BY employees.emp_no ASC;

--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.Dept_name
FROM employees
	INNER JOIN dept_emp
		ON (employees.emp_no = dept_emp.emp_no)
	INNER JOIN departments
		ON (dept_emp.dept_no = departments.dept_no)
--SUB QUERY
WHERE departments.dept_name IN ('Sales', 'Development')
--ORDER BY for a more refined search
ORDER BY departments.dept_name DESC, employees.emp_no ASC;

--8. In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.
--Select last_name from employees & create alias for last name count
--List in order from most common last name to least common
SELECT last_name, COUNT(last_name) as "Last_Name_Count"
FROM employees
GROUP BY last_name
ORDER BY "Last_Name_Count" DESC;