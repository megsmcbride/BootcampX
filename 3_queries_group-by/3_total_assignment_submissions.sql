SELECT cohort.name as cohorts, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP By cohorts.name
ORDER BY count(*) DESC;