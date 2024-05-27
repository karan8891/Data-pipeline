--sales data
CREATE TABLE IF NOT EXISTS `ncpl-420514.project2.sales` (
    date DATE,
    order_id INT64,
    product_id INT64,
    customer_id INT64,
    quantity INT64,
    total_price FLOAT64,
);

-- product info
CREATE TABLE IF NOT EXISTS `ncpl-420514.project2.products` (
    product_id INT64,
    product_name STRING,
    category STRING,
    weight INT64
);

-- customers
CREATE TABLE IF NOT EXISTS `ncpl-420514.project2.customers` (
    customer_id INT64,
    customer_name STRING,
    location STRING,
    address STRING
);
