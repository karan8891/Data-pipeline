

SELECT
  c.location,
  s.date,
  SUM(s.total_price) AS total_sales
FROM
  `ncpl-420514.project2.sales` AS s
JOIN
  `ncpl-420514.project2.customers` AS c
ON
  s.customer_id = c.customer_id
GROUP BY
  c.location, s.date
ORDER BY
  s.date;
