-- Write your SQL code here
CREATE PROCEDURE GetCustomerTransactions(IN p_customer_id INT)
BEGIN
    SELECT TransactionDate, TransactionType, Amount
    FROM Transaction
    WHERE CustomerID = p_customer_id;
END;

CREATE PROCEDURE MonthlySalesReport(IN p_start_date DATE, IN p_end_date DATE)
BEGIN
    SELECT 
        MONTH(TransactionDate) AS Month,
        SUM(Amount) AS TotalSales
    FROM Transaction
    WHERE TransactionDate BETWEEN p_start_date AND p_end_date
    GROUP BY MONTH(TransactionDate);
END;