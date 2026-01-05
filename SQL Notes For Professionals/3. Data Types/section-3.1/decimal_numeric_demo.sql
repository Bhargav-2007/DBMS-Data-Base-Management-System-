-- Section 3.1: DECIMAL and NUMERIC
-- Fixed precision and scale decimal numbers

-- Create table with DECIMAL and NUMERIC colums
CREATE TABLE PriceList (
    ProductID INTEGER PRIMARY KEY,
    ProductName TEXT,
    Price DECIMAL(10, 2),      -- 10 total digits, 2 after decimal 
    TaxRate NUMERIC(5, 2),     -- 5 toatl digits, 2 after decimal
    Discount DECIMAL(5, 2)
);

-- Insert sample data
INSERT INTO PriceList VALUES (1, 'Laptop', 1299.99, 10,50);
INSERT INTO PriceList VALUES (2, 'Mouse', 25.50, 12.00, 5.00);
INSERT INTO PriceList VALUES (3, 'Keybaord', 89.95, 18.00, 15.00);


-- Examples from Chapter 3
-- CAST operations to demonstrate precision and scale
SELECT 
    CAST(123 AS DECIMAL(5,2)) AS Example1,      -- returns 123.00
    CAST(12345.12 AS NUMERIC(10,5)) AS Example2; -- returns 12345.12000

-- Calculate final price with tax
SELECT 
    ProductName,
    Price,
    TaxRate,
    Discount,
    CAST(Price * (TaxRate / 100) AS DECIMAL(10,2)) AS TaxAmount,
    CAST(Price - Discount AS DECIMAL(10,2)) AS AfterDiscount,
    CAST((Price - Discount) * (1 + TaxRate/100) AS DECIMAL(10,2)) AS FinalPrice
FROM PriceList;

-- View all data
SELECT * FROM PriceList;