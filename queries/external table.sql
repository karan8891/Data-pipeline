-- Creating external table for sales data
CREATE OR REPLACE EXTERNAL TABLE `ncpl-420514.project2.sales`
OPTIONS (
  format = 'CSV',
  uris = ['gs://project__2/sales.csv]
);
