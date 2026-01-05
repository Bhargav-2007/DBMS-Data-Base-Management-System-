#!/bin/bash
echo "Running all Data Types sections..."

cd "/workspaces/DBMS-Data-Base-Management-System-/SQL Notes For Professionals/3. Data Types"

echo "=== Section 3.1: DECIMAL and NUMERIC ==="
sqlite3 datatypes.db < section-3.1/decimal_numeric_demo.sql

echo -e "\n=== Section 3.2: FLOAT and REAL ==="
sqlite3 datatypes.db < section-3.2/float_real_demo.sql

echo -e "\n=== Section 3.3: Integers ==="
sqlite3 datatypes.db < section-3.3/integer_demo.sql

echo -e "\n=== Section 3.4: MONEY and SMALLMONEY ==="
sqlite3 datatypes.db < section-3.4/money_demo.sql

echo -e "\n=== Section 3.5: BINARY and VARBINARY ==="
sqlite3 datatypes.db < section-3.5/binary_demo.sql

echo -e "\n=== Section 3.6: CHAR and VARCHAR ==="
sqlite3 datatypes.db < section-3.6/char_varchar_demo.sql

echo -e "\n=== Section 3.7: NCHAR and NVARCHAR ==="
sqlite3 datatypes.db < section-3.7/nchar_nvarchar_demo.sql

echo -e "\n=== Section 3.8: UNIQUEIDENTIFIER ==="
sqlite3 datatypes.db < section-3.8/uniqueidentifier_demo.sql

echo -e "\n✅ All sections completed!"
echo -e "\nView tables:"
sqlite3 datatypes.db ".tables"
