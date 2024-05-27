-- Creation of a partitioned table
CREATE OR REPLACE TABLE `ncpl-420514.project2.sales_partitioned`
PARTITION BY date AS
SELECT * FROM `ncpl-420514.project2.sales`;
