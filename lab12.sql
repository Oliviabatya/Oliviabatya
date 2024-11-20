-- #1. Concatenate Course Name and Semester:
SELECT concat("course_name", ' - ', "semester") AS course_semester
FROM courses;

-- #2. Find Courses with Labs on Fridays:
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%'

-- #3. Upcoming Assignments:
SELECT *
FROM assignments
WHERE due_date > '2024-11-20'

--#4. Count Assignments by Status:
SELECT status, count(*)
FROM assignments
GROUP BY status

-- #5. Longest Course Name:
SELECT course_name, length(course_name)
FROM courses
ORDER BY length(course_name) DESC
LIMIT 1

-- #6. Uppercase Course Names:
SELECT upper(course_name)
FROM courses

-- #7. Assignments Due in September:
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%'

-- #8. Assignments with Missing Due Dates:
SELECT *
FROM assignments
WHERE due_date IS NULL