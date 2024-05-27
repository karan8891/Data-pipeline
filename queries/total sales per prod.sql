SELECT
  c.customer_id,
  c.customer_name,
  c.location,
  SUM(s.total_pr) AS total_exp
FROM
  `ncpl-420514.project2.sales` AS s
JOIN
  `ncpl-420514.project2.customers` AS c
ON
  s.customer_id = c.customer_id
WHERE
  c.location = 'Toronto'
GROUP BY
  c.customer_name;
