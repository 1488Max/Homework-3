SELECT Project.*, COUNT(DEVELOPER.id), SUM(developer.salary) AS sum_salary
FROM project
JOIN developer_project ON developer_project.project_id = project.id
JOIN developer ON developer.id = developer_project.developer_id
GROUP BY project.id
ORDER BY sum_salary DESC
LIMIT 1;