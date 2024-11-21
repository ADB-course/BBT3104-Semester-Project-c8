-- Write your SQL code here
START TRANSACTION;
INSERT INTO Customer (CustomerID, CustomerName, ContactInformation, AccountBalance)
VALUES (1, 'John Doe', 'johndoe@email.com', 1000);
INSERT INTO Transaction (TransactionID, TransactionDate, TransactionType, Amount, CustomerID)
VALUES (1, CURDATE(), 'Deposit', 500, 1);
COMMIT;