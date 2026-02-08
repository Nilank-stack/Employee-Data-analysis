CREATE TABLE employees (
    EmpID INT,
    Name TEXT,
    Department TEXT,
    Salary INT,
    City TEXT,
    Experience INT,
    Performance TEXT
);

INSERT INTO employees VALUES
(101,'Rahul','IT',32000,'Delhi',2,'A'),
(102,'Neha','HR',26000,'Mumbai',3,'B'),
(103,'Amit','IT',45000,'Delhi',5,'A'),
(104,'Pooja','Sales',22000,'Pune',1,'C'),
(105,'Rohit','HR',30000,'Delhi',6,'B'),
(106,'Simran','Sales',38000,'Mumbai',4,'A'),
(107,'Karan','IT',50000,'Pune',8,'A'),
(108,'Meena','Sales',24000,'Delhi',2,'B'),
(109,'Anil','HR',27000,'Pune',3,'C');

For Department wise average salary:-
SELECT Department, AVG(Salary) AS Avg_Salary
FROM employees
GROUP BY Department;
For City wise employee count:-
SELECT City, COUNT(*) AS Employee_Count
FROM employees
GROUP BY City;
For Highest paid employee in each department:-
SELECT Department, Name, Salary
FROM employees e1
WHERE Salary = (SELECT MAX(Salary)
    FROM employees e2
    WHERE e1.Department = e2.Department
);
For Department wise total salary cost
SELECT Department, SUM(Salary) AS Total_Department_Cost
FROM employees
GROUP BY Department;
