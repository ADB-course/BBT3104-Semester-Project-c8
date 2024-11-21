-- Write your SQL code here
CREATE FUNCTION GetCustomerBalance(p_customer_id INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE balance DECIMAL(10,2);
    SELECT AccountBalance INTO balance FROM Customer WHERE CustomerID = p_customer_id;
    RETURN balance;
END;
CREATE FUNCTION CalculateTotalSales(p_start_date DATE, p_end_date DATE) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total_sales DECIMAL(10,2);
    SELECT SUM(Amount) INTO total_sales FROM Transaction
    WHERE TransactionDate BETWEEN p_start_date AND p_end_date;
    RETURN total_sales;
END;