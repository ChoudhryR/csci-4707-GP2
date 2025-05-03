CREATE TABLE Inventory (
    BookID INT,
    StockQuantity INT,
    RestockThreshold INT,
    PRIMARY KEY (BookID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
