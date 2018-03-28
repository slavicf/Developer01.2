#3. Вычислить общую ЗП только Java разработчиков
SELECT s.branch, SUM(d.salary) totalSalary
FROM Developers d
JOIN Developer_Skills ds ON d.id = ds.developer_id
JOIN Skills s ON s.id = ds.skills_id
WHERE s.branch = 'Java';
