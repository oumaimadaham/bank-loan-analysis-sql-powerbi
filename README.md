# Bank Loan Analysis – SQL & Power BI

##  Project Overview
This project combines **business domain knowledge** with **SQL analysis** and **Power BI visualization** to study bank loan data.  
The goal is to understand **loan performance (good vs bad loans)**, analyze borrower behavior, and provide insights that support **risk management, portfolio monitoring, and decision-making**.  

---

## Domain Knowledge
Bank loans are critical financial tools that help individuals and businesses achieve goals.  
However, banks must carefully **assess risk** and borrowers must understand **terms, costs, and responsibilities**.  

## Dataset
**File:** `financial_loan.xlsx`  
**Size:** = `38,576` loan application records  
**Source:** Simulated banking dataset 

### **Columns Description**
| Column Name         | Description |
|---------------------|-------------|
| `id`                | Unique loan ID |
| `address_state`     | Borrower's state (USA) |
| `emp_length`        | Employment length (Years) |
| `emp_title`         | Borrower's occupation |
| `grade`             | Loan grade assigned by the bank (A = best quality, G = highest risk) |
| `home_ownership`    | Type of home ownership |
| `issue_date`        | Date the loan was issued |
| `loan_status`       | Loan repayment status (Fully Paid, Current, Charged Off) |
| `purpose`           | Loan purpose (e.g., credit card, debt consolidation) |
| `sub_grade`         | More detailed classification (e.g., A1–A5, B1–B5) within each grade |
| `term`              | Loan repayment term (36 or 60 months) |
| `dti`               | Debt-to-income ratio |
| `installment`         | Monthly payment owed by the borrower (principal + interest) |
| `int_rate`          | Annual interest rate (%) |
| `loan_amount`       | Amount funded by the bank |
| `total_payment`     | Total amount received from the borrower |

##  SQL Analysis
All queries are available in **`sql/loan_dashboard_queries.sql`**.
