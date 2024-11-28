# dbt Project with BigQuery
## Prerequisites
- Google BigQuery
- Visual Studio Code
## Setup and Installation
### Setup dbt
```
# Create virtual env
python -m venv venv
source venv/Scripts/activate
pip install dbt-bigquery

# Install dbt
dbt init
```
### Setup BigQuery
1. Enable BigQuery API
2. Create your BQ Service Account: references
3. Create your Dataset
4. Create BigQuery Table using upload files method with data from data/Amazon Sale Report.csv
## Project Structure
Make sure use service_account.json from BigQuery
```
.
|-- README.md
|-- analyses
|-- cred
|   `-- service_account.json
|-- dbt_packages
|   |-- dbt_date
|   |-- dbt_expectations
|   `-- dbt_utils
|-- dbt_project.yml
|-- logs
|   `-- dbt.log
|-- macros
|-- models
|   |-- dim_fulfillment.sql
|   |-- dim_product.sql
|   |-- dim_promotion.sql
|   |-- dim_sales_channel.sql
|   |-- dim_sales_shipment.sql
|   |-- fact_salesorder.sql
|   `-- sources.yml
|-- package-lock.yml
|-- packages.yml
|-- result
|   |-- Analysis_top_selling_product.png
|   |-- dim_fulfillment.png
|   |-- dim_product.png
|   |-- dim_promotion.png
|   |-- dim_sales_channel.png
|   |-- dim_sales_shipment.png
|   |-- fact_salesorder1.png
|   `-- fact_salesorder2.png
|-- seeds
|-- snapshots
|-- target
|   |-- compiled
|   |-- graph.gpickle
|   |-- graph_summary.json
|   |-- manifest.json
|   |-- partial_parse.msgpack
|   |-- run
|   |-- run_results.json
|   `-- semantic_manifest.json
`-- tests
```
