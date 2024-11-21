-- Write your SQL code here
CREATE TRIGGER trg_update_balance
BEFORE UPDATE ON Transaction
FOR EACH ROW
BEGIN
    DECLARE new_balance DECIMAL(10,2);
    SELECT AccountBalance INTO new_balance
FROM Customer WHERE CustomerID = NEW.CustomerID;
    IF new_balance - NEW.Amount < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient balance';
    END IF;
END;

CREATE TRIGGER trg_update_history
AFTER INSERT ON Transaction
FOR EACH ROW
BEGIN
END;