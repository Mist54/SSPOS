CREATE TABLE Tables (
    TableID INT IDENTITY(1,1) PRIMARY KEY,
    TableName VARCHAR(50) NOT NULL UNIQUE,        -- Name or identifier for the table (e.g., T1, T2, VIP Table) and must be unique
    Capacity INT NOT NULL CHECK (Capacity > 0),   -- Number of seats available at the table
    Location VARCHAR(100),                        -- Description of the table's location (e.g., Near window, Outdoor)
    IsOccupied BIT DEFAULT 0,                     -- Indicates if the table is currently occupied
    IsReserved BIT DEFAULT 0,                     -- Indicates if the table is reserved
    AddedDate DATETIME DEFAULT GETDATE(),         -- The date and time when the table was added to the system
    ModifiedDate DATETIME DEFAULT GETDATE(),      -- The date and time when the table details were last modified
    IsDeleted BIT DEFAULT 0                       -- Indicates if the table is marked as deleted (soft delete)
);


INSERT INTO Tables (TableName, Capacity, Location, IsOccupied, IsReserved, AddedDate, ModifiedDate, IsDeleted)
VALUES 
('T1', 4, 'Near Window', 0, 0, GETDATE(), GETDATE(), 0),
('T2', 2, 'Near Entrance', 0, 0, GETDATE(), GETDATE(), 0),
('T3', 6, 'Outdoor', 0, 0, GETDATE(), GETDATE(), 0),
('T4', 4, 'Corner', 0, 1, GETDATE(), GETDATE(), 0),
('VIP1', 8, 'VIP Section', 0, 1, GETDATE(), GETDATE(), 0),
('T5', 4, 'Center', 1, 0, GETDATE(), GETDATE(), 0),
('T6', 2, 'Near Bar', 0, 0, GETDATE(), GETDATE(), 0),
('T7', 4, 'Patio', 0, 0, GETDATE(), GETDATE(), 0),
('T8', 4, 'Near Kitchen', 1, 0, GETDATE(), GETDATE(), 0),
('VIP2', 10, 'VIP Section', 0, 1, GETDATE(), GETDATE(), 0);
