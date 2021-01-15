--Create table for each csv to import into
--Create employees table first
CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE);
	
--view employees table
SELECT * 
FROM employees;

--Create departments table
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR);
	
--view departments table
SELECT *
FROM departments;

--Create dep_emp table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR);
	
--view dept_emp table
SELECT * 
FROM dept_emp;

--Create dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT);
	
--view table dept_manager
SELECT * 
FROM dept_manager;

--update to add "manager column" with boolean
ALTER TABLE dept_manager
ADD COLUMN manager BOOLEAN;

UPDATE dept_manager
SET manager = True;

--Create salaries table
CREATE TABLE salaries(
	emp_no INT,
	salary INT);
	
--view salaries table
SELECT *
FROM salaries;

--Create titles table
CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR);
	
--view titles table
SELECT *
FROM titles;

