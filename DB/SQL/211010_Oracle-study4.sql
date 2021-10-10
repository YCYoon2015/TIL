-- ���� (Join)
-- ���� ���� (equi join, inner join)
SELECT A.employee_id, A.department_id, B.department_name, C.location_id, C.city
FROM employees A, departments B, locations C
WHERE A.department_id = B.department_id
AND B.location_id = C.location_id;

SELECT COUNT(*) -- 1���� �������� �˼��ִ�. �̴� NULL���� �����ϱ� �����̴�. �̸� �����ϱ� ���� �ܺ������� �������.
FROM employees A, departments B, locations C
WHERE A.department_id = B.department_id
AND B.location_id = C.location_id;

-- �ܺ� ����: �����ϴ� ���̺� (+)�� �ٿ��� ������ Null�� ����� �Ѵ�.
SELECT A.employee_id, A.first_name, A.last_name, B.department_id, B.department_name
FROM employees A, departments B
WHERE A.department_id = B.department_id(+) -- ����Ʈ �ƿ��� ����
ORDER BY A.employee_id;

-- ��ü ����: �ڱ� ���̺��� ���� �����Ҷ�
SELECT A.employee_id, A.first_name, A.last_name, A.manager_id, B.first_name||' '||B.last_name manager_name
FROM employees A, employees B
WHERE A.manager_id = B.employee_id
ORDER BY A.employee_id;


-- ���� ������
-- ������ �翷���� �ø��� ����̶��, ����� ���Ʒ��� �ø��� ��İ� �����ϴ�

-- Union (������) : Union all�� ����ϸ� �����տ� �ߺ��� �׸��� �������� �ʰ� ���� ���
SELECT department_id
FROM employees
UNION
SELECT department_id
FROM departments;

-- Intersect (������)
SELECT department_id
FROM employees
INTERSECT
SELECT department_id
FROM departments
ORDER BY department_id;

-- Minus (������)
SELECT department_id -- ���°�
FROM departments
MINUS
SELECT department_id -- ������
FROM employees;

