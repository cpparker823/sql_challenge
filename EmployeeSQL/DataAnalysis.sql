select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
Left Join salaries
On salaries.emp_no = employees.emp_no;

select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date asc;

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
left join dept_manager 
on dept_manager.dept_no = departments.dept_no
left join employees
on dept_manager.emp_no = employees.emp_no;

select employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no, departments.dept_name
from dept_emp
right join employees
on dept_emp.emp_no = employees.emp_no
left join departments
on dept_emp.dept_no = departments.dept_no;

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name Like 'B%';

select dept_emp.emp_no, employees.last_name, employees.first_name
from dept_emp
left join employees
on dept_emp.emp_no = employees.emp_no
where dept_no = 'd007';

select dept_emp.emp_no, employees.last_name, employees.first_name
from dept_emp
left join employees
on dept_emp.emp_no = employees.emp_no
where dept_no = 'd007' or dept_no = 'd005';

select last_name, COUNT(last_name) as Count 
from employees
group by last_name
order by Count desc;







