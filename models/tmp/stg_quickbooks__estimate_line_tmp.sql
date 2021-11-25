--To disable this model, set the using_estimate variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_estimate', True)) }}

select {{ var('estimates_line') }}.*,
{{ var('estimates_line_salesitemlinedetail_itemref') }}.value as sales_item_item_id,
{{ var('estimates_line_salesitemlinedetail') }}.qty as sales_item_quantity,
{{ var('estimates_line_sales__linedetail_taxcoderef') }}.value as sales_item_tax_code_id,
{{ var('estimates_line_salesitemlinedetail') }}.unitprice as sales_item_unit_price
from {{ var('estimates_line') }}
left join {{ var('estimates_line_salesitemlinedetail') }} using (_airbyte_line_hashid)
	left join {{ var('estimates_line_sales__linedetail_taxcoderef') }} using (_airbyte_salesitemlinedetail_hashid)
	left join {{ var('estimates_line_salesitemlinedetail_itemref') }} using (_airbyte_salesitemlinedetail_hashid)