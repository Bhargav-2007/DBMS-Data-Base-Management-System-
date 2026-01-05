#!/bin/bash
echo "Running Section 3.1: DECIMAL and NUMERIC examples..."
sqlite3 datatypes.db < section-3.1/decimal_numeric_demo.sql
echo "Done! Query the PriceList table."
