-- Section 3.1: DECIMAL and NUMERIC
-- Both are functionally equivalent with fixed precision

-- CLEANUP: Drop the table if it exists so we can re-run the script safely
DROP TABLE IF EXISTS PriceDemo;

-- Create table to demonstrate DECIMAL/NUMERIC
CREATE TABLE PriceDemo (
    ProductId INT PRIMARY KEY,
    PriceDecimal DECIMAL(10, 2),
    PriceNumeric NUMERIC(10, 2),
    TaxRate DECIMAL(5, 2)
);

-- Insert sample data
INSERT INTO PriceDemo VALUES (1, 199.99, 199.99, 8.75);
INSERT INTO PriceDemo VALUES (2, 1234.56, 1234.56, 10.00);

-- CAST examples from the book
SELECT CAST(123 AS DECIMAL(5,2)) AS Example1;  -- returns 123.00
SELECT CAST(12345.12 AS NUMERIC(10,5)) AS Example2;  -- returns 12345.12000

-- Practical calculation
SELECT 
    ProductId,
    PriceDecimal,
    TaxRate,
    PriceDecimal * (TaxRate / 100.0) AS TaxAmount,
    PriceDecimal + (PriceDecimal * TaxRate / 100.0) AS TotalPrice
FROM PriceDemo;

-- Show the difference in precision
SELECT 
    CAST(123 AS DECIMAL(5,2)) AS Decimal_5_2,
    CAST(123 AS DECIMAL(10,5)) AS Decimal_10_5,
    CAST(123.456789 AS DECIMAL(10,2)) AS Truncated;