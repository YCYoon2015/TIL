-- �Լ�����
-- �ǽ��� HR �̿�

-- ��ҹ��� ��ȯ
SELECT last_name,
       LOWER(last_name) LOWER����,
       UPPER(last_name) UPPER����,
       email,
       INITCAP(email) INITCAP����
FROM employees;

-- ���� ����
SELECT job_id, SUBSTR(job_id, 1, 2) ������
FROM   employees;

-- Ư�� ���� �ٲٱ�
SELECT job_id, REPLACE(job_id, 'ACCOUNT', '����') ������
FROM   employees;

-- �ڸ� ä���
SELECT first_name, LPAD(first_name, 12, '*') ������
FROM   employees;

-- Ư�� ���� ����
SELECT job_id,
       LTRIM(job_id, 'F') LTRIM������,
       RTRIM(job_id, 'T') RTRIM������
FROM   employees;





