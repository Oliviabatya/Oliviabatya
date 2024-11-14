--1
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234'

--2
SELECT min(due_date)
FROM assignments

--3
SELECT max(due_date)
FROM assignments

--4
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08'

--5
SELECT title, due_date
FROM assignments
WHERE due_date like '2024-10%'

-- Question #6
SELECT *
FROM assignments
WHERE status = 'Completed'
ORDER BY due_date