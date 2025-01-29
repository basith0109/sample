--Write an SQL query to find all customers who have placed at least one order, showing their name,
--order ID, and total amount.
SELECT C.Name,O.OrderID,O.TotalAmount 
FROM Customers AS C 
JOIN Orders AS O
ON C.CustomerID=O.CustomerID

--Write an SQL query to retrieve all employees, including those who are not assigned to any
--department, showing their name, salary, and department name.
SELECT E.Name,E.Salary,D.DepartmentName
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.DepartmentID=D.DepartmentID

--Write an SQL query to find all categories, including those that do not have any products listed,
--showing the category name and product name.
SELECT C.CategoryName,P.ProductName
FROM Categories AS C
RIGHT JOIN Products AS P
ON P.CategoryID=C.CategoryID

--Write an SQL query to display a list of all students and courses, ensuring students without courses
--and courses without students are included.
SELECT S.StudentID,S.StudentName,C.CourseID,C.CourseName,C.StudentID
FROM Students AS S
FULL OUTER JOIN Courses AS C
ON S.StudentID=C.StudentID

SELECT  E.Name AS employee_name,M.Name AS manager_name
FROM employees AS E
LEFT JOIN 
employees AS M ON E.manager_id = M.employee_id; 

--Write an SQL query to find all orders that have been shipped after January 1, 2024, showing the
--order date and shipment date.

SELECT O.OrderDate,S.ShipDate
FROM Orders AS O
INNER JOIN Shipments AS S
ON O.OrderID=S.ShipmentID
WHERE ShipDate>'2024-01-01'

--Write an SQL query to find all authors and the number of books they have written, including authors
--who haven't written any books.

SELECT A.AuthorName,B.COUNT(BookID)
FROM Authors AS A
LEFT JOIN Books AS B
ON A.AuthorID=B.AuthorID
GROUP BY AuthorName

--Write an SQL query to find the average rating of each movie, displaying the movie title and average
--rating.
SELECT M.Title,AVG(RatingScore) AS averagerating
FROM Movies AS M
INNER JOIN Ratings AS R
ON M.MovieID=R.MovieID
GROUP BY Title


--Write an SQL query to display the project names along with the employees assigned to each project.
SELECT P.ProjectID,P.ProjectName,E.EmployeeID,E.Name,
PP,ProjectID,PP.EmployeeID FROM Projects AS P
JOIN ProjectAssignments AS PP 
ON P.ProjectID=PP.ProjectID JOIN 
Employees AS E
ON E.EmployeeID=PP.EmployeeID


--Write an SQL query to find all customers who made payments in the last 30 days, showing their
--name and total amount paid.



