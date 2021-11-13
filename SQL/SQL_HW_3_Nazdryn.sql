-- 1) Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id

-- 2) Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
where monthly_salary < 2000

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary_id, salary.monthly_salary
from employee_salary em
inner join salary on salary.id = em.id

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary_id, salary.monthly_salary
from employee_salary em
inner join salary on salary.id = em.salary_id 
where monthly_salary < 2000

!-- 5. Найти всех работников кому не начислена ЗП.

select employee_name, monthly_salary
from employee_salary e
join employees on employees.id = e.employee_id
left join salary on salary.id = e.salary_id
where monthly_salary is null

-- 6. Вывести всех работников с названиями их должности.

select employee_name, role_name
from roles_employee r
inner join employees on employees.id = r.employee_id
inner join roles on roles.id = r.role_id

-- 7. Вывести имена и должность только Java разработчиков.

select employee_name, role_name
from roles_employee r
inner join employees on employees.id = r.employee_id
inner join roles on roles.id = r.role_id
where role_name like '%Java%';

-- 8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name
from roles_employee r
inner join employees on employees.id = r.employee_id
inner join roles on roles.id = r.role_id
where role_name like '%Python%';

-- 9. Вывести имена и должность всех QA инженеров.

select employee_name, role_name
from roles_employee r
inner join employees on employees.id = r.employee_id
inner join roles on roles.id = r.role_id
where role_name like '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.

select employee_name, role_name
from roles_employee r
inner join employees on employees.id = r.employee_id
inner join roles on roles.id = r.role_id
where role_name like '%Manual%';

-- 11. Вывести имена и должность автоматизаторов QA

select employee_name, role_name
from roles_employee r
inner join employees on employees.id = r.employee_id
inner join roles on roles.id = r.role_id
where role_name like '%Automation%';

-- 12. Вывести имена и зарплаты Junior специалистов

select employee_name, monthly_salary, role_name
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary, role_name
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary, role_name
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков

select monthly_salary, role_name
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%Java%';

-- 16. Вывести зарплаты Python разработчиков

select monthly_salary, role_name
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, monthly_salary, role_name
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%Junior Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary, role_name
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%Middle JavaS%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, monthly_salary, role_name
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%Senior Java de%';

-- 20. Вывести зарплаты Junior QA инженеров

select employee_name, monthly_salary, role_name
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like 'Junior Manual QA engineer' or role_name like 'Junior Automation QA engineer';

-- 21. Вывести среднюю зарплату всех Junior специалистов

select AVG(monthly_salary) as avg
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков

select SUM(monthly_salary) as sum
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%JavaS%';

-- 23. Вывести минимальную ЗП QA инженеров

select MIN(monthly_salary) as min
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров

select MAX(monthly_salary) as max
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%QA%';

-- 25. Вывести количество QA инженеров

select COUNT(monthly_salary) as count
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.

select COUNT(monthly_salary) as count
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%Middle%';

-- 27. Вывести количество разработчиков

select COUNT(monthly_salary) as count
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.

select SUM(monthly_salary) as sum
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
where role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name, role_name, monthly_salary
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
WHERE monthly_salary>0 ORDER BY monthly_salary

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_name, monthly_salary
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
WHERE monthly_salary>=1700 and monthly_salary<=2300 ORDER BY monthly_salary

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, role_name, monthly_salary
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
WHERE monthly_salary>0 and monthly_salary<=2300 ORDER BY monthly_salary

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, role_name, monthly_salary
from employee_salary e
inner join employees on employees.id = e.employee_id
inner join salary on salary.id = e.salary_id
inner join roles_employee on roles_employee.employee_id = e.salary_id
inner join roles on roles.id = roles_employee.role_id
WHERE monthly_salary=1100 or monthly_salary=1500 or monthly_salary=2000 ORDER BY monthly_salary