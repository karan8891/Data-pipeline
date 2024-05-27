-- Upsert sales data
MERGE INTO `ncpl-420514.project2.sales` AS sales
USING `ncpl-420514.project2.ext_sales` AS ext_sales
ON sales.date = ext_sales.date AND sales.product_id = ext_sales.product_id AND sales.customer_id = ext_sales.customer_id
WHEN MATCHED THEN
  UPDATE SET
    sales.quantity = ext_sales.quantity,
    sales.total_price = ext_sales.total_price
WHEN NOT MATCHED THEN
  INSERT (date, product_id, customer_id, quantity, total_price)
  VALUES (sales.date, sales.product_id, sales.customer_id, sales.quantity, sales.total_price);
