-- DML (Data Manipulartion Language)
-- insert (�� ����)
INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES
(271, 'Sample_Dept', 200, 1700);

SELECT *
FROM departments;

commit; -- Ŀ���� ���� DB�� �ݿ��� �� �ִ�.


-- update
UPDATE departments
SET manager_id = 201,
    location_id = 1800
WHERE department_name = 'Sample_Dept';


UPDATE departments
SET    (manager_id, location_id) = (Select manager_id, location_id
                                    FROM   departments
                                    WHERE  department_id = 40) -- ������ ���ؼ� ���� (��������)
WHERE  department_name = 'Sample_Dept';

-- delete
DELETE FROM departments
WHERE department_name = 'Sample_Dept';

SELECT *
FROM departments;

commit;



