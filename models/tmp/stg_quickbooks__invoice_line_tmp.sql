--To enable this model, set the using_invoice variable within your dbt_project.yml file to True.
{{ config(enabled=var('using_invoice', True)) }}

select 
{{ var('invoices_line') }}.*,
{{ var('invoices_line_discou__il_discountaccountref') }}.value as discount_account_id,
{{ var('invoices_line_discountlinedetail_classref') }}.value as discount_class_id,
{{ var('invoices_line_discountlinedetail') }}.discountpercent as discount_discount_percent,
{{ var('invoices_line_discountlinedetail') }}.percentbased as discount_percent_based,
{{ var('invoices_line_discountlinedetail_taxcoderef') }}.value as discount_tax_code_id,
{{ var('invoices_line_salesitemlinedetail_itemref') }}.value as item_id,
{{ var('invoices_line_salesitemlinedetail') }}.qty as quantity,
{{ var('invoices_line_salesitemlinedetail_classref') }}.value as sales_item_class_id,
{{ var('invoices_line_salesitemlinedetail_itemref') }}.value as sales_item_item_id,
{{ var('invoices_line_salesitemlinedetail') }}.qty as sales_item_quantity,
{{ var('invoices_line_salesitemlinedetail') }}.servicedate as sales_item_service_date,
{{ var('invoices_line_salesi__linedetail_taxcoderef') }}.value as sales_item_tax_code_id,
{{ var('invoices_line_salesitemlinedetail') }}.unitprice as sales_item_unit_price

from {{ var('invoices_line') }}
left join {{ var('invoices_line_discountlinedetail') }} using (_airbyte_line_hashid)
left join {{ var('invoices_line_discou__il_discountaccountref') }} using (_airbyte_discountlinedetail_hashid)
left join {{ var('invoices_line_discountlinedetail_classref') }} using (_airbyte_discountlinedetail_hashid)
left join {{ var('invoices_line_discountlinedetail_taxcoderef') }} using (_airbyte_discountlinedetail_hashid)
left join {{ var('invoices_line_linkedtxn') }} using (_airbyte_line_hashid)
left join {{ var('invoices_line_salesitemlinedetail') }} using (_airbyte_line_hashid)
left join {{ var('invoices_line_salesitemlinedetail_classref') }} using (_airbyte_salesitemlinedetail_hashid)
left join {{ var('invoices_line_salesitemlinedetail_itemref') }} using (_airbyte_salesitemlinedetail_hashid)
left join {{ var('invoices_line_salesi__linedetail_taxcoderef') }} using (_airbyte_salesitemlinedetail_hashid)
left join {{ var('invoices_line_salesi__detail_itemaccountref') }} using (_airbyte_salesitemlinedetail_hashid)
