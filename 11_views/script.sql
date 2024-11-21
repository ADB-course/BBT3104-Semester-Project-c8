-- Write your SQL code here
CREATE VIEW CustomerSummaryView AS
SELECT CustomerID, CustomerName, ContactInformation, AccountBalance
FROM Customer;

CREATE VIEW FinancialTransactionReportView AS
SELECT TransactionID, TransactionDate, TransactionType, Amount, CustomerID
FROM Transaction;