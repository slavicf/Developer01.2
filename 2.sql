# 2. Найти самый дорогой проект (исходя из salary всех разработчиков)
SELECT project_name, d.first_name, d.Second_name, SUM(salary) totalCost
FROM Projects p
JOIN Developer_Project dp ON dp.project_id = p.id
JOIN Developers d ON dp.developer_id = d.id
GROUP BY project_name
ORDER BY totalCost DESC
LIMIT 1;
