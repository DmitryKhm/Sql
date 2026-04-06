-- TASK 1
WITH RECURSIVE emp_tree AS (
    SELECT * FROM Employees WHERE EmployeeID = 1
    UNION ALL
    SELECT e.* FROM Employees e
    JOIN emp_tree et ON e.ManagerID = et.EmployeeID
)
SELECT e.EmployeeID,
       e.Name,
       e.ManagerID,
       d.DepartmentName,
       r.RoleName,
       STRING_AGG(DISTINCT p.ProjectName, ', ') AS ProjectNames,
       STRING_AGG(DISTINCT t.TaskName, ', ') AS TaskNames
FROM emp_tree e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
LEFT JOIN Roles r ON e.RoleID = r.RoleID
LEFT JOIN Projects p ON p.DepartmentID = e.DepartmentID
LEFT JOIN Tasks t ON t.AssignedTo = e.EmployeeID
GROUP BY e.EmployeeID, e.Name, e.ManagerID, d.DepartmentName, r.RoleName
ORDER BY e.Name;

-- TASK 2 (с подсчетами)
-- можно дополнить аналогично
