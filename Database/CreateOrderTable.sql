CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),        -- Unique identifier for each order
    OrderDate DATETIME NOT NULL,                  -- Date and time when the order was placed
    OrderType VARCHAR(50) NOT NULL,               -- Type of order (e.g., TakeHome, Direct)
    TableID INT NULL,                            -- Foreign key to the Tables table (NULL for TakeHome orders)
    CustomerName VARCHAR(100) NULL,              -- Name of the customer (NULL for direct orders or if anonymous)
    CustomerPhone VARCHAR(20) NULL,              -- Phone number of the customer (NULL for direct orders or if anonymous)
    TotalAmount DECIMAL(10, 2) NOT NULL,         -- Total amount of the order
    CreatedBy VARCHAR(50) NULL,                  -- User who created the order
    CreatedDate DATETIME DEFAULT GETDATE(),       -- Date and time when the order was created
    ModifiedBy VARCHAR(50) NULL,                 -- User who last modified the order
    ModifiedDate DATETIME DEFAULT GETDATE(),      -- Date and time when the order was last modified
    IsDeleted BIT NOT NULL DEFAULT 0,             -- Indicates if the order is deleted (soft delete)
    CONSTRAINT FK_TableOrder FOREIGN KEY (TableID) REFERENCES Tables (TableID)  -- Foreign key constraint
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY IDENTITY(1,1),   -- Unique identifier for each order detail record
    OrderID INT NOT NULL,                         -- Foreign key to the Orders table
    ProductID INT NOT NULL,                       -- Foreign key to the Products table
    Quantity INT NOT NULL,                       -- Quantity of the product ordered
    UnitPrice DECIMAL(10, 2) NOT NULL,           -- Price per unit of the product
    CreatedBy VARCHAR(50) NULL,                  -- User who created the order detail
    CreatedDate DATETIME DEFAULT GETDATE(),       -- Date and time when the order detail was created
    ModifiedBy VARCHAR(50) NULL,                 -- User who last modified the order detail
    ModifiedDate DATETIME DEFAULT GETDATE(),      -- Date and time when the order detail was last modified
    CONSTRAINT FK_Order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),  -- Foreign key constraint
    CONSTRAINT FK_Product FOREIGN KEY (ProductID) REFERENCES Product(ProductID) -- Foreign key constraint
);

