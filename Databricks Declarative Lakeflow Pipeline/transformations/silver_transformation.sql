-- Fact Sales data cleaning

CREATE STREAMING LIVE TABLE silver.fact_sales
COMMENT "Fact Sales data cleaning"
AS
SELECT
    CAST(sale_id AS INT) AS Sale_id,
    to_date(order_date, 'dd/MM/yyyy') as order_date,
    CAST(customer_id AS INT) AS customer_id,
    CAST(product_id AS INT) AS product_id,
    CAST(quantity AS INT) AS quantity,
    CAST(discount AS DECIMAL(10,2)) AS discount,
    CAST(region_id AS INT) AS region_id,
    CAST(channel AS STRING) AS channel,
    CAST(promo_code AS STRING) AS promo_code
FROM STREAM(lakeflow_dlt_uc.bronze.fact_sales);




-- Customers data cleaning

CREATE STREAMING LIVE TABLE silver.customers
COMMENT "Customers data cleaning"
AS
SELECT
    CAST(customer_id AS INT) AS customer_id,
    CAST(first_name AS STRING) AS first_name,
    CAST(last_name AS STRING) AS last_name,
    CAST(email AS STRING) AS email,
    to_date(join_date, 'dd/MM/yyyy') AS join_date,
    CAST(vip as STRING) as vip  
    
FROM STREAM(lakeflow_dlt_uc.bronze.customers);





-- Products data cleaning

CREATE STREAMING LIVE TABLE silver.products
COMMENT "Products data cleaning"
AS
SELECT
    CAST(product_id AS INT) AS product_id,
    CAST(product_name AS STRING) AS product_name,
    CAST(category AS STRING) AS category,
    CAST(price AS DECIMAL(10,2)) AS price,
    CAST(in_stock AS INT) AS in_stock
    
FROM STREAM(lakeflow_dlt_uc.bronze.products);





-- Products data cleaning

CREATE STREAMING LIVE TABLE silver.regions
COMMENT "Products data cleaning"
AS
SELECT
    CAST(region_id AS INT) AS region_id,
    CAST(region_name AS STRING) AS region_name,
    CAST(country AS STRING) AS country
FROM STREAM(lakeflow_dlt_uc.bronze.regions);
