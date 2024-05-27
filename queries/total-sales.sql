SELECT
  p.category, s.date, SUM(s.total_pr) AS total_sls
FROM
  `ncpl-420514.project2.sales` AS s
JOIN
  `ncpl-420514.project2.products` AS p
ON
  s.product_id = p.product_id
GROUP BY
  p.category
ORDER BY
  s.date;
