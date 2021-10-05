-- ���� Ÿ�� �Լ�
-- �ݿø�
SELECT salary,
       salary/30 �ϱ�,
       ROUND(salary/30, 0) ������0,
       ROUND(salary/30, 1) ������1,
       ROUND(salary/30, -1) ������2
FROM   employees;

-- ���� ����
SELECT salary,
       salary/30 �ϱ�,
       TRUNC(salary/30, 0) ������0,
       TRUNC(salary/30, 1) ������1,
       TRUNC(salary/30, -1) ������2
FROM   employees;

-- ��¥ Ÿ�� �Լ�
-- ��¥ ���� ��� (��)
SELECT SYSDATE, hire_date, MONTHS_BETWEEN(SYSDATE, hire_date) ������
FROM   employees
WHERE  department_id = 100;

-- ���� �� ���ϱ�
SELECT hire_date,
       ADD_MONTHS(hire_date, 3) ���ϱ�_������,
       ADD_MONTHS(hire_date, -3) ����_������
FROM   employees
WHERE  employee_id BETWEEN 100 AND 106;

-- ���ƿ��� ���� ��¥�� ��������
SELECT hire_date,
       NEXT_DAY(hire_date, '�ݿ���') ��������,
       NEXT_DAY(hire_date, 6) ��������
FROM   employees
WHERE  employee_id BETWEEN 100 AND 106;

-- �� ���� ������ �� ���
SELECT hire_date,
       LAST_DAY(hire_date) ������
FROM   employees
WHERE  employee_id BETWEEN 100 AND 106;



