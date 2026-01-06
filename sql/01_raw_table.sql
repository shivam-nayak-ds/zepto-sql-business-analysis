-- Step 1: Create database
CREATE DATABASE zepto_sql;
USE zepto_sql;

-- Step 2: Raw table (as-is CSV)
CREATE TABLE raw_data (
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    email VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    state VARCHAR(50),

    product_id VARCHAR(50),
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),

    order_id VARCHAR(50),
    order_date DATE,
    order_status VARCHAR(50),

    transaction_id VARCHAR(50),
    payment_mode VARCHAR(50),
    amount DECIMAL(10,2),

    rating INT,
    delivery_time_minutes INT,
    delivery_status VARCHAR(50)
);
