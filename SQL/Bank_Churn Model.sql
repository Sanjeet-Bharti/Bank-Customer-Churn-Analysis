-- Total Customers
SELECT COUNT(*) AS TotalCustomers
FROM Churn_Modelling;

-- Customers Who Left
SELECT COUNT(*) AS CustomersLeft
FROM Churn_Modelling
WHERE Exited = 1;

-- Churn by Geography
SELECT Geography,
       COUNT(*) AS TotalCustomers,
       SUM(Exited) AS CustomersLeft
FROM Churn_Modelling
GROUP BY Geography;

-- Average Credit Score
SELECT AVG(CreditScore) AS AvgCreditScore
FROM Churn_Modelling;

-- Average Balance
SELECT AVG(Balance) AS AvgBalance
FROM Churn_Modelling;