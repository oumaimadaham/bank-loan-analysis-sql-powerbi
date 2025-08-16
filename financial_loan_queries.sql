
-- Total Loan Applications
SELECT COUNT(ID) AS Total_Loan_Applications
FROM Loan;

-- Total Loan Amount
SELECT SUM(loan_amount) AS Total_Loan_Amount 
FROM Loan;

-- Total Loan Amount Month-to-Date (MTD)
SELECT SUM(loan_amount) AS MTD_Total_Loan_Amount
FROM Loan
WHERE MONTH(issue_date) = 12
  AND YEAR(issue_date) = 2021;






