CREATE INDEX idx_customer_name
ON Customer (CustomerName);

CREATE INDEX idx_transaction_customer_id
ON Transaction(CustomerID);