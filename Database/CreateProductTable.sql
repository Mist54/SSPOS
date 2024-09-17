CREATE TABLE Product (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    CategoryID INT,
    Price DECIMAL(10, 2) NOT NULL CHECK (Price >= 0),
    Description VARCHAR(255),
    IsAvailable BIT DEFAULT 1,
    ImageURL VARCHAR(255),
    AddedDate DATETIME DEFAULT GETDATE(),
	ModifiedDate DATETIME DEFAULT GETDATE(),
    StockQuantity INT DEFAULT 0 CHECK (StockQuantity >= 0),
    TaxRate DECIMAL(5, 2) DEFAULT 0 CHECK (TaxRate >= 0),
    Discount DECIMAL(5, 2) DEFAULT 0 CHECK (Discount >= 0),
	IsDeleted BIT DEFAULT 0,
	IsSpecial BIT DEFAULT 0,
);

INSERT INTO Product (ProductName, CategoryID, Price, Description, IsAvailable, ImageURL, AddedDate, ModifiedDate, StockQuantity, IsDeleted, TaxRate, Discount, IsSpecial)
VALUES 
('Margherita Pizza', 1, 9.99, 'Classic cheese and tomato pizza', 1, NULL, GETDATE(), GETDATE(), 50, 0, 5.00, 0.00, 0),
('Pepperoni Pizza', 1, 12.99, 'Pepperoni and cheese pizza', 1, NULL, GETDATE(), GETDATE(), 30, 0, 5.00, 0.00, 0),
('Caesar Salad', 2, 7.99, 'Romaine lettuce with Caesar dressing', 1, NULL, GETDATE(), GETDATE(), 20, 0, 5.00, 0.00, 0),
('Grilled Chicken Sandwich', 3, 8.99, 'Chicken sandwich with lettuce and tomato', 1, NULL, GETDATE(), GETDATE(), 25, 0, 5.00, 0.00, 0),
('Veggie Burger', 3, 10.99, 'Vegetarian burger with a variety of vegetables', 1, NULL, GETDATE(), GETDATE(), 15, 0, 5.00, 0.00, 1),
('French Fries', 4, 3.99, 'Crispy golden French fries', 1, NULL, GETDATE(), GETDATE(), 100, 0, 5.00, 0.00, 0),
('Chocolate Cake', 5, 6.99, 'Rich chocolate cake with icing', 1, NULL, GETDATE(), GETDATE(), 10, 0, 5.00, 0.00, 0),
('Cappuccino', 6, 4.50, 'Italian coffee with steamed milk foam', 1, NULL, GETDATE(), GETDATE(), 40, 0, 5.00, 0.00, 0),
('Mango Smoothie', 6, 5.99, 'Refreshing mango smoothie', 1, NULL, GETDATE(), GETDATE(), 35, 0, 5.00, 0.00, 0),
('Chicken Wings', 7, 11.99, 'Spicy chicken wings with dipping sauce', 1, NULL, GETDATE(), GETDATE(), 20, 0, 5.00, 0.00, 0);

