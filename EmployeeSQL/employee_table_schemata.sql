CREATE TABLE Departments (
	dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

SELECT * FROM Departments;

CREATE TABLE Titles (
	title_id VARCHAR(30) NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
);

SELECT * FROM Titles;

CREATE TABLE Employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(5) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

SELECT * FROM Employees;

CREATE TABLE Department_Employees (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

SELECT * FROM Department_Employees;

DROP TABLE Department_Managers;
CREATE TABLE Department_Managers (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Department_Managers;


CREATE TABLE Salaries (
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Salaries;