
-- Total Loan Applications
SELECT COUNT(ID) AS Total_Loan_Applications
FROM Loan;

-- Total Loan Applications Month-to-Date (MTD)
SELECT COUNT(ID) AS MTD_Total_Applications
FROM Loan
WHERE MONTH(issue_date) = 12
  AND YEAR(issue_date) = 2021;

-- Total Loan Applications Previous Month (PMTD)
SELECT COUNT(ID) AS PMTD_Total_Applications
FROM Loan
WHERE MONTH(issue_date) = 11
  AND YEAR(issue_date) = 2021;

-- Total Funded Amount
SELECT SUM(loan_amount) AS Total_Loan_Amount 
FROM Loan;

-- Total Funded Amount Month-to-Date (MTD)
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount
FROM Loan
WHERE MONTH(issue_date) = 12
  AND YEAR(issue_date) = 2021;

-- Total Funded Amount Previous Month (PMTD)
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount
FROM Loan
WHERE MONTH(issue_date) = 11
  AND YEAR(issue_date) = 2021;

-- Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Received 
FROM Loan;

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

-- Good Loan Funded Amount 
SELECT SUM(loan_amount) AS Good_Loan_Amount
FROM Loan
WHERE loan_status IN ('Fully Paid', 'Current');

-- Good Loan Received Amount 
SELECT SUM(total_payment) AS Good_Loan_Received_Amount
FROM Loan
WHERE loan_status IN ('Fully Paid', 'Current');

-- Good Loan Percentage
SELECT 
    (COUNT(CASE WHEN loan_status IN ('Fully Paid', 'Current') THEN ID END) * 100.0) 
    / COUNT(ID) AS Good_Loan_Percentage
FROM Loan;

-- Loan Status 
SELECT 
    loan_status,
    COUNT(ID) AS Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount,
    ROUND(AVG(int_rate), 3) * 100 AS Interest_Rate,
    ROUND(AVG(dti), 3) * 100 AS DTI
FROM Loan
GROUP BY loan_status;


-- Loan Status Metrics Month-to-Date (MTD)
SELECT 
    loan_status,
    SUM(loan_amount) AS MTD_Total_Funded_Amount,
    SUM(total_payment) AS MTD_Total_Received_Amount
FROM Loan
WHERE MONTH(issue_date) = 12
GROUP BY loan_status;

-- Monthly Loan Metrics
SELECT 
    DATENAME(MONTH, issue_date) AS Month,
    COUNT(ID) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM Loan
GROUP BY DATENAME(MONTH, issue_date)
ORDER BY DATENAME(MONTH, issue_date) ASC;

-- Loan Metrics by City/State
SELECT 
    address_state AS City,
    COUNT(ID) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM Loan
GROUP BY address_state;

-- Loan Metrics by Term (36/60 Months)
SELECT 
    term AS Term,
    COUNT(ID) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM Loan
GROUP BY term;

-- Loan Metrics by Employment Length
SELECT 
    emp_length AS Employment_Length,
    COUNT(ID) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM Loan
GROUP BY emp_length;

-- Loan Metrics by Purpose
SELECT 
    purpose AS Purpose,
    COUNT(ID) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM Loan
GROUP BY purpose
ORDER BY COUNT(ID) ASC;

-- Loan Metrics by Home Ownership
SELECT 
    home_ownership AS Home_Ownership,
    COUNT(ID) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM Loan
GROUP BY home_ownership
ORDER BY COUNT(ID) ASC;
