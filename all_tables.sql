CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Biography TEXT
);
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    PublicationYear INT,
    Price DECIMAL(10,2),
    PublisherName VARCHAR(100),
    PublisherContactInfo VARCHAR(100)
);
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    BillingStreet VARCHAR(100),
    BillingCity VARCHAR(50),
    BillingState VARCHAR(20),
    BillingZip VARCHAR(10)
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE,
    Position VARCHAR(50)
);
CREATE TABLE Includes (
    OrderID INT,
    BookID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, BookID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
CREATE TABLE Inventory (
    BookID INT,
    StockQuantity INT,
    RestockThreshold INT,
    PRIMARY KEY (BookID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
CREATE TABLE Manages (
    EmployeeID INT,
    BookID INT,
    PRIMARY KEY (EmployeeID, BookID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ShippingDate DATE,
    Quantity INT,
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate DATE,
    PaymentAmount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
CREATE TABLE Processes (
    EmployeeID INT,
    OrderID INT,
    PRIMARY KEY (EmployeeID, OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
CREATE TABLE Writes (
    AuthorID INT,
    BookID INT,
    PRIMARY KEY (AuthorID, BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
