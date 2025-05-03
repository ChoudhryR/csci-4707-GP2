CREATE TABLE Manages (
    EmployeeID INT,
    BookID INT,
    PRIMARY KEY (EmployeeID, BookID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
