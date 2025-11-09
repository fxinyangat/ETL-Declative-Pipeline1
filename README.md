# ETL-Declative-Pipeline

This pipeline leverages Databricks Declarative ETL Pipelines to move data from Delta Volumes to Streaming Tables
and through the different pipeline buckets (bronze, silver and gold) following the Medalion Architecture.

Bronze - Contains data "as is" from the source system.
Silver - Contains the data transformations, and data quality checks using expectations.
Gold - Contains the different data aggregations ready to serve to downstream business applications, dashboards or reports.



