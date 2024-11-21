-- Write your SQL code here
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactInformation VARCHAR(50),
    AccountBalance DECIMAL(10,2)
) ENGINE=InnoDB;

CREATE TABLE Transaction (
    TransactionID INT PRIMARY KEY,
    TransactionDate DATE,
    TransactionType VARCHAR(10),
    Amount DECIMAL(10,2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
) ENGINE=InnoDB;