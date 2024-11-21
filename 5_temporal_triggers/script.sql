-- Write your SQL code here
CREATE EVENT monthly_report
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-01-01 00:00:00'
DO
BEGIN
  -- Insert a record into a report table
  INSERT INTO monthly_reports (report_month, total_sales)
  VALUES (CURDATE(), (SELECT SUM(amount) FROM transactions WHERE MONTH(transaction_date) = MONTH(CURDATE()) AND YEAR(transaction_date) = YEAR(CURDATE())));
SET @to_email = 'your_email@example.com';
  SET @subject = 'Monthly Sales Report';
  SET @body = CONCAT('Total sales for the month of ', MONTHNAME(CURDATE()), ' is ', (SELECT SUM(amount) FROM transactions WHERE MONTH(transaction_date) = MONTH(CURDATE()) AND YEAR(transaction_date) = YEAR(CURDATE())));

  CALL send_email(@to_email, @subject, @body);
END;