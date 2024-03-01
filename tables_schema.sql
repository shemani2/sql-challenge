DROP TABLE employees;
DROP TABLE titles;
DROP TABLE salaries;
DROP TABLE departments;
DROP TABLE dept_manager;
DROP TABLE dept_emp;

--Tables for each CSV
CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL, 
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

select * from employees;

CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
);

select * from departments;

CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id)
);

select * from titles;

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

select * from dept_emp;

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY NOT NULL,
    salary INTEGER NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

select * from salaries;


CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
    emp_no INT PRIMARY KEY NOT NULL,
    FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

select * from dept_manager;


