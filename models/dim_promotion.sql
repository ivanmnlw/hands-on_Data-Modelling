-- dim_product
{{
  config(
    materialized='table'
  )
}}

With t_data AS (
SELECT DISTINCT 
  `promotion-ids` AS promotion_ids
FROM
    {{ source('bronze', 'amazon_sale_report') }}
)

SELECT {{ dbt_utils.generate_surrogate_key([
				'promotion_ids'
			]) }} as product_id, *
FROM t_data