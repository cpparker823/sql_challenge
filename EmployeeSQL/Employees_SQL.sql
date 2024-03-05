create table titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)
);

create table employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(6),
	birth_date date,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2),
	hire_date date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

create table departments(
	dept_no VARCHAR(5) NOT NULL, 
	dept_name VARCHAR(20)NOT NULL,
	PRIMARY KEY (dept_no)
);

create table dept_manager(
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

create table dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);


create table salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


	