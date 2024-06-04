-- 1)
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
LEFT JOIN salaries as s
ON e.emp_no = s.emp_no;


-- 2)
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3)
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        e.last_name,
        e.first_name
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN employees AS e
        ON (dm.emp_no = e.emp_no);

-- 4) 
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
ORDER BY e.emp_no;

-- 5)
SELECT first_name, last_name, birth_date, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6)
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- 7)
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY e.emp_no;

-- 8) 
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
