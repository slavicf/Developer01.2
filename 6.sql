#6. Вычислить среднюю ЗП программистов в самом дешевом проекте
SELECT p.PROJECT_NAME, AVG(SALARY) avgSalary
FROM Projects p
JOIN Developer_Project dp ON dp.project_id = p.id
JOIN Developers d ON dp.developer_id = d.id
JOIN (
	SELECT p.PROJECT_NAME cheapestProject, min(p.cost) minCost
	FROM Projects p
) minCost
WHERE p.PROJECT_NAME = cheapestProject
