-- Write your SQL code here
INSERT INTO Customer (CustomerID, CustomerName, ContactInformation, AccountBalance)
VALUES
  (1, 'John Doe', 'johndoe@example.com', 1000),
  (2, 'Jane Smith', 'janesmith@example.com', 500),
  (3, 'Michael Johnson', 'michaeljohnson@example.com', 2000);

INSERT INTO Transaction (TransactionID, TransactionDate, TransactionType, Amount, CustomerID)
VALUES
  (1, '2023-11-21', 'Deposit', 500, 1),
  (2, '2023-11-22', 'Withdrawal', 200, 1),
  (3, '2023-11-23', 'Deposit', 100, 2),
  (4, '2023-11-24', 'Withdrawal', 50, 2),
  (5, '2023-11-25', 'Deposit', 300, 3);