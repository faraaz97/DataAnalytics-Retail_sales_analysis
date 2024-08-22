CREATE DATABASE RetailSalesData;

USE RetailSalesData;

CREATE TABLE Sales_Data_Transaction(
customer_id VARCHAR(255),
trans_date VARCHAR(255),
tran_amount INT);

EXPLAIN SELECT * from Sales_Data_Transaction WHERE customer_id = 'CS5295';

CREATE TABLE Sales_Data_Response(
customer_id VARCHAR(255) PRIMARY KEY,
response INT);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Response.csv'
INTO TABLE Sales_Data_Response
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

CREATE INDEX idx_id ON Sales_Data_Transaction(customer_id);
select * from Sales_Data_Transaction;