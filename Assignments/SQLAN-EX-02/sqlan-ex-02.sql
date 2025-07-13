-- SQLAN-EX-02
-- Author: Efe Ahmet Kurt
-- Purpose: Analytic Functions Practice on HR Schema

-- Soru 1: Bir departmanda çalışan tüm kişilerin isimlerini tek kolonda yan yana yazınız.
SELECT department_id,
       LISTAGG(first_name || ' ' || last_name, ', ') WITHIN GROUP (ORDER BY employee_id) AS employees
FROM employees
GROUP BY department_id;

-- Soru 2: Job ID’ye göre gruplanacak şekilde Employee ID sıralamasına göre, her çalışan için kendisinden 1 önce ve sonra çalışanların maaşlarının toplamı
SELECT employee_id, job_id, salary,
       NVL(LAG(salary) OVER (PARTITION BY job_id ORDER BY employee_id), 0) +
       NVL(LEAD(salary) OVER (PARTITION BY job_id ORDER BY employee_id), 0) AS total_neighbor_salary
FROM employees;

-- Soru 3: Job ID’ye göre gruplanacak şekilde Employee ID sıralamasına göre, her çalışan için kendinden 1 sonra gelen çalışanın telefon numarası
SELECT employee_id, job_id, phone_number,
       LEAD(phone_number) OVER (PARTITION BY job_id ORDER BY employee_id) AS next_phone
FROM employees;

-- Soru 4: Tüm çalışanların maaş sıralaması, aynı maaş varsa işe giriş tarihi ile sıralama
SELECT employee_id, salary, hire_date,
       RANK() OVER (ORDER BY salary DESC, hire_date) AS salary_rank
FROM employees;

-- Soru 5: Tüm çalışanları Employee ID sıralamasına göre 10’arlı gruplara ayırınız
SELECT employee_id,
       NTILE(CEIL(COUNT(*) OVER () / 10)) OVER (ORDER BY employee_id) AS group_number
FROM employees;

-- Soru 6: Her departman için, o departmanın ortalama maaşının altında olanlara 0, üstünde olanlara 1
SELECT employee_id, department_id, salary,
       CASE
           WHEN salary < AVG(salary) OVER (PARTITION BY department_id) THEN 0
           ELSE 1
       END AS salary_flag
FROM employees;

-- Soru 7: Her yıl için işe alınan ilk çalışan
SELECT * FROM (
    SELECT employee_id, first_name, last_name, hire_date,
           ROW_NUMBER() OVER (PARTITION BY EXTRACT(YEAR FROM hire_date) ORDER BY hire_date) AS rn
    FROM employees
) WHERE rn = 1;

-- Soru 8: Departmanda en yüksek maaş alan çalışan dışındakileri getir
SELECT * FROM employees e
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- Soru 9: Her departmanda en yüksek maaş alan 2 kişiyi getir
SELECT * FROM (
    SELECT employee_id, first_name, last_name, department_id, salary,
           DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
    FROM employees
) WHERE rnk <= 2;

-- Soru 10: Bir departmandaki tüm çalışanlar için kendisinden önce ve sonra işe başlayanların isim ve soyisim bilgileri
SELECT e.employee_id, e.first_name, e.last_name, e.hire_date,
       LAG(e.first_name || ' ' || e.last_name) OVER (PARTITION BY department_id ORDER BY hire_date) AS previous_employee,
       LEAD(e.first_name || ' ' || e.last_name) OVER (PARTITION BY department_id ORDER BY hire_date) AS next_employee
FROM employees e;
