--To enable this model, set the using_invoice variable within your dbt_project.yml file to True.
{{ config(enabled=var('using_invoice', True)) }}

select 
{{ var('invoices_line') }}.*,
{{ ('invoices_line_discou__il_discountaccountref') }}.value as discount_account_id,

from {{ var('invoices_line') }}
left join {{ var('invoices_line_discountlinedetail') }} using (_airbyte_line_hashid)
	left join {{ var('invoices_line_discou__il_discountaccountref') }} using (_airbyte_discountlinedetail_hashid)
	left join {{ var('invoices_line_discountlinedetail_classref') }} using (_airbyte_discountlinedetail_hashid)
	left join {{ var('invoices_line_discountlinedetail_taxcoderef') }} using (_airbyte_discountlinedetail_hashid)
left join {{ var('invoices_line_linkedtxn') }} using (_airbyte_line_hashid)
left join {{ var('invoices_line_salesitemlinedetail') }} using (_airbyte_line_hashid)
	left join {{ var('invoices_line_salesitemlinedetail_classref') }} using (_airbyte_salesitemlinedetail_hashid)
	left join {{ var('invoices_line_salesitemlinedetail_itemref') }} using (_airbyte_salesitemlinedetail_hashid)
		left join {{ var('invoices_line_salesi__detail_itemaccountref') }} using (_airbyte_salesitemlinedetail_hashid)
