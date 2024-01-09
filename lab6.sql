-- Q1
SELECT * FROM Customers
-- Q2
SELECT OrderId, OrderDate, ShipCity, ShipCountry FROM Orders
-- Q3
SELECT OrderId, OrderDate, CustomerID FROM Orders WHERE ShipCountry = 'Brazil'
-- Q4
SELECT OrderId, OrderDate, CustomerID FROM Orders WHERE ShipCountry = 'France' or
ShipCountry = 'Sweden'
-- Q5
SELECT OrderId, OrderDate, Freight, ShipCountry FROM Orders WHERE (ShipCountry =
'France' or ShipCountry = 'Sweden') and Freight > 45
-- Q6
SELECT TitleofCourtesy + ' ' + FirstName + ' ' + LastName as EmployeeFullName,
Title FROM Employees
-- Q7
SELECT OrderId, OrderDate, ShipName, ShipAddress, ShipCity, ShipCountry FROM Orders
WHERE ShipAddress like '%box%'
-- Q8
SELECT OrderId, CustomerID FROM Orders WHERE CustomerID like 'A%' and CustomerID
like '%I'
-- Q9
SELECT TitleofCourtesy + ' ' + FirstName + ' ' + LastName as EmployeeFullName FROM
Employees WHERE DATEDIFF(Year, HireDate, GETDATE()) > 10
-- Q10
SELECT *, DATEDIFF(Day, OrderDate, ShippedDate) as DaysToProcess FROM Orders
-- Q11
SELECT * FROM Customers WHERE Fax IS null
-- Q12
SELECT * FROM Products WHERE QuantityPerUnit like '%boxes%' or QuantityPerUnit like
'%box%'
