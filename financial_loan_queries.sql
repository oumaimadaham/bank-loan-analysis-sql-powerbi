
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

-- Total Loan Amount Previous Month (PMTD)
SELECT SUM(loan_amount) AS PMTD_Total_Loan_Amount
FROM Loan
WHERE MONTH(issue_date) = 11
  AND YEAR(issue_date) = 2021;

-- Total Amount Received Month-to-Date (MTD)
SELECT SUM(total_payment) AS MTD_Total_Amount_Received
FROM Loan
WHERE MONTH(issue_date) = 12
  AND YEAR(issue_date) = 2021;

-- Total Amount Received Previous Month (PTD)
SELECT SUM(total_payment) AS PTD_Total_Amount_Received
FROM Loan
WHERE MONTH(issue_date) = 11
  AND YEAR(issue_date) = 2021;


-- Average Interest Rate
SELECT ROUND(AVG(int_rate), 3) AS Average_Interest_Rate
FROM Loan;

-- Average Interest Rate Month-to-Date (MTD)
SELECT ROUND(AVG(int_rate), 3) AS MTD_Average_Interest_Rate
FROM Loan
WHERE MONTH(issue_date) = 12
  AND YEAR(issue_date) = 2021;

-- Average Interest Rate Previous Month (PMTD)
SELECT ROUND(AVG(int_rate), 3) AS PMTD_Average_Interest_Rate
FROM Loan
WHERE MONTH(issue_date) = 11
  AND YEAR(issue_date) = 2021;

-- Average DTI (Debt-to-Income Ratio) overall
SELECT ROUND(AVG(dti), 3) AS Average_DTI
FROM Loan;


-- Average DTI Month-to-Date (MTD)
SELECT ROUND(AVG(dti), 3) AS MTD_Average_DTI
FROM Loan
WHERE MONTH(issue_date) = 12 
  AND YEAR(issue_date) = 2021;

-- Average DTI Previous Month (PMTD)
SELECT ROUND(AVG(dti), 3) AS PMTD_Average_DTI
FROM Loan
WHERE MONTH(issue_date) = 11 
  AND YEAR(issue_date) = 2021;


-- Good Loan Applications 
SELECT COUNT(ID) AS Good_Loan_Application
FROM Loan
WHERE loan_status IN ('Fully Paid', 'Current');

-- Good Loan Funded Amount (SUM of loan_amount)
SELECT SUM(loan_amount) AS Good_Loan_Amount
FROM Loan
WHERE loan_status IN ('Fully Paid', 'Current');

-- Good Loan Received Amount (SUM of total_payment)
SELECT SUM(total_payment) AS Good_Loan_Received_Amount
FROM Loan
WHERE loan_status IN ('Fully Paid', 'Current');

-- Good Loan Percentage
SELECT 
    (COUNT(CASE WHEN loan_status IN ('Fully Paid', 'Current') THEN ID END) * 100.0) 
    / COUNT(ID) AS Good_Loan_Percentage
FROM Loan;






