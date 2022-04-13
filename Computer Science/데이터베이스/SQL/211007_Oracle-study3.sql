-- �Ϲ� �Լ�
-- Null ó��
SELECT salary * NVL(commission_pct, 1) New  --NVL(A, B)�� A���� Null�� B�� ġȯ�Ѵٴ� �ǹ��̴�.
FROM   employees
ORDER BY commission_pct;

-- �� ���� ó��
-- DECODE(�� �̸�, ���� ��, ġȯ��, �⺻��)
SELECT first_name,
       last_name,
       department_id,
       salary �����޿�,
       DECODE(department_id, 60, salary*1.1, salary) �����ȱ޿�, -- �μ�id 60�̸� �޿��λ�
       DECODE(department_id, 60, '10%�λ�', '���λ�') �λ󿩺�
FROM   employees;

-- CASE ���� END
SELECT employee_id, first_name, last_name, salary,
       CASE
            WHEN salary >= 9000 THEN '�����޿�'
            WHEN salary BETWEEN 6000 AND 8999 THEN '�����޿�'
            ELSE '�����޿�'
       END AS �޿����  -- AS �Ⱦ��� ���� ��ü�� �÷��̸��̴�
FROM   employees
WHERE  job_id = 'IT_PROG';

-- ������ ����
-- RANK () OVER([PARTITION BY ���̸�] ORDER BY ���̸�) // ���⼭ []�� �ɼ���
SELECT employee_id,
       salary,
       RANK()       OVER(ORDER BY salary DESC) RANK_�޿�, -- �Ϲ����� ����
       DENSE_RANK() OVER(ORDER BY salary DESC) DENSE_RANK_�޿�, -- ������� ������ ����
       ROW_NUMBER() OVER(ORDER BY salary DESC) ROW_NUMBER_�޿� -- ������� ����
FROM   employees;

-- �׷���
SELECT job_id ����, SUM(salary) �������ѱ޿�, AVG(salary) ��������ձ޿�
FROM   employees
WHERE  employee_id >= 10
GROUP BY job_id, manager_id  -- �ι� �׷��� ����
ORDER BY �������ѱ޿� DESC, ��������ձ޿�;

--






