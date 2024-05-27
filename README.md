Project 2 :<br />
Goal:<br />
-Develop a data pipeline to ingest daily sales data files, <br />product information, and customer details from Cloud Storage (GCS) into BigQuery, <br />enabling efficient updates, historical analysis, and data joining capabilities.
Technical Skills Covered:<br />
BigQuery: Writing queries for data ingestion, manipulation, and joining.<br />
Cloud Storage: Uploading and managing data files.<br />
BigQuery Partitioning: Organizing data for optimized performance.<br />
Upsert Logic with BigQuery: Efficiently combining inserts and updates.<br />
Project Phases:<br />
<br />
Phase 1: Data Preparation (Local Setup)<br />
Generate Sample Data:<br />
Simulate daily sales data (CSV) with columns like date, product_id, customer_id, quantity, and total_price.<br />
Create separate CSV files for product information (e.g., product_id, product_name, category) and customer details (e.g., customer_id, customer_name, location).<br />
Stage Sample Data: Upload all three CSV files (sales, products, customers) to a GCS bucket.<br />
<br />
Phase 2: BigQuery Schema Definition<br />
Design Table Schemas: Define separate BigQuery table schemas for sales data, products, and customer details, specifying appropriate data types for each column.<br />
Create BigQuery Tables: Use BigQuery web UI or command-line tool to create three BigQuery tables based on the defined schemas (one for each data source).<br />
<br />
<br />
Phase 3: Data Ingestion with Upsert Logic<br />
External Table Definitions: Create external tables in BigQuery pointing to the location of each data file in GCS (one for sales, products, and customers).<br />
Upsert Logic with CREATE OR REPLACE: If you anticipate updates to the source data,<br /> implement upsert logic using CREATE OR REPLACE for each external table to efficiently handle<br /> new data inserts and updates within BigQuery tables.
Phase 4: Data Joining and Analysis<br />
Write BigQuery Queries: Develop BigQuery queries to join the sales data,<br /> product information, and customer details tables. Utilize appropriate join <br />conditions based on common columns (e.g., product_id for sales and product info, customer_id for sales and customer details). Sample queries can include:
Total sales per product category over time (join sales and product data).<br />
Identifying top-selling customers in a specific region (join sales, product, and customer data).<br />
Analyzing customer purchase trends based on demographics (join sales and customer data).<br />
<br />
<br />
Phase 5: Partitioning for Scalability (Optional)<br />
Partitioning by Date: Configure your sales data table to be partitioned by the date column. <br />This improves query performance when analyzing data for specific periods.<br />
<br />
Phase 6: Automation (Optional - Bonus)<br />
Cloud Scheduler: Set up a Cloud Scheduler job to trigger a Cloud Function or BigQuery script at regular intervals (e.g., daily).<br />
Cloud Function: Develop a Cloud Function to automate downloading new data files from GCS,<br /> initiating the upsert logic for external tables (if applicable), and potentially cleaning up older data.<br />
Deliverables:<br />
Code snippets for data generation (all three sources), BigQuery schema definitions, upsert logic scripts (optional), and sample joining and analytical queries.<br />
Documentation of the project setup, including steps and explanations.<br />
Bonus:<br />
Implement the optional automation phase using Cloud Scheduler and Cloud Functions.<br />
Evaluation Criteria:<br />
Functionality: Successful implementation of data ingestion from three sources, upsert logic (optional), data joining, and analytical queries.<br />
Code quality: Clear, well-documented, and efficient code for each phase.<br />
Adherence to best practices: Utilization of appropriate BigQuery features for data management and querying.<br />
Bonus points for successful automation implementation.<br />
