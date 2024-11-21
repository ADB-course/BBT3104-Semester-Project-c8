-- Write your SQL code here
CREATE TABLE Transaction (
    TransactionID INT PRIMARY KEY,
    TransactionDate DATE,
    TransactionType VARCHAR(10),
    Amount DECIMAL(10,2) CHECK (Amount > 0),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
)ENGINE=InnoDB;