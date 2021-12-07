{{ config(enabled=var('using_sales_receipt', True)) }}

select {{ var('sales_receipts_line') }}.*,
{{ var('sales_receipts_line___il_discountaccountref') }}.value as discount_account_id,
{{ var('sales_receipts_line_discountlinedetail') }}.percentbased as discount_percent_based,
{{ var('sales_receipts_line_discountlinedetail') }}.discountpercent as discount_discount_percent,
{{ var('sales_receipts_line___detail_itemaccountref') }}.value as sales_item_account_id,
{{ var('sales_receipts_line___emlinedetail_classref') }}.value as sales_item_class_id,
{{ var('sales_receipts_line___temlinedetail_itemref') }}.value as sales_item_item_id,
{{ var('sales_receipts_line_salesitemlinedetail') }}.qty as sales_item_quantity,
{{ var('sales_receipts_line___linedetail_taxcoderef') }}.value as sales_item_tax_code_id,
{{ var('sales_receipts_line_salesitemlinedetail') }}.unitprice as sales_item_unit_price,
{{ var('sales_receipts') }}."Id" as sales_receipt_id

from {{ var('sales_receipts_line') }}
left join {{ var('sales_receipts') }} using (_airbyte_sales_receipts_hashid)
left join {{ var('sales_receipts_line_salesitemlinedetail') }} using (_airbyte_line_hashid)
left join {{ var('sales_receipts_line___detail_itemaccountref') }} using (_airbyte_salesitemlinedetail_hashid)
left join {{ var('sales_receipts_line___emlinedetail_classref') }} using (_airbyte_salesitemlinedetail_hashid)
left join {{ var('sales_receipts_line___linedetail_taxcoderef') }} using (_airbyte_salesitemlinedetail_hashid)
left join {{ var('sales_receipts_line___temlinedetail_itemref') }} using (_airbyte_salesitemlinedetail_hashid)
left join {{ var('sales_receipts_line_discountlinedetail') }} using (_airbyte_line_hashid)
left join {{ var('sales_receipts_line___il_discountaccountref') }} using (_airbyte_discountlinedetail_hashid)