#5. Найти самый дешевый проект (исходя из cost всех проектов)
SELECT p.id, p.project_name, MIN(p.cost)
FROM Projects p;
