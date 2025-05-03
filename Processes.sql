CREATE TABLE Processes (
    EmployeeID INT,
    OrderID INT,
    PRIMARY KEY (EmployeeID, OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
