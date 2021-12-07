--To disable this model, set the using_refund_receipt variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_refund_receipt', True)) }}

select {{ var('refund_receipts_line') }}.*,
{{ var('refund_receipts_line__il_discountaccountref') }}.value as discount_account_id,
{{ var('refund_receipts_line__ntlinedetail_classref') }}.value as discount_class_id,
{{ var('refund_receipts_line_discoun_01b_taxcoderef') }}.value as discount_tax_code_id,
{{ var('refund_receipts_line__detail_itemaccountref') }}.value as sales_item_account_id,
{{ var('refund_receipts_line__emlinedetail_classref') }}.value as sales_item_class_id,
{{ var('refund_receipts_line__temlinedetail_itemref') }}.value as sales_item_item_id,
{{ var('refund_receipts_line_salesitemlinedetail') }}.qty as sales_item_quantity,
{{ var('refund_receipts_line_salesit_33f_taxcoderef') }}.value as sales_item_tax_code_id,
{{ var('refund_receipts_line_salesitemlinedetail') }}.unitprice as sales_item_unit_price
from {{ var('refund_receipts_line') }}
left join {{ var('refund_receipts_line_salesitemlinedetail') }} using (_airbyte_line_hashid)
left join {{ var('refund_receipts_line__detail_itemaccountref') }} using (_airbyte_salesitemlinedetail_hashid)
left join {{ var('refund_receipts_line__emlinedetail_classref') }} using (_airbyte_salesitemlinedetail_hashid)
left join {{ var('refund_receipts_line__temlinedetail_itemref') }} using (_airbyte_salesitemlinedetail_hashid)
left join {{ var('refund_receipts_line_salesit_33f_taxcoderef') }} using (_airbyte_salesitemlinedetail_hashid)
left join {{ var('refund_receipts_line_discountlinedetail') }} using (_airbyte_line_hashid)
left join {{ var('refund_receipts_line__il_discountaccountref') }} using (_airbyte_discountlinedetail_hashid)
left join {{ var('refund_receipts_line__ntlinedetail_classref') }} using (_airbyte_discountlinedetail_hashid)
left join {{ var('refund_receipts_line_discoun_01b_taxcoderef') }} using (_airbyte_discountlinedetail_hashid)