--To disable this model, set the using_bill and using_bill_payment variables within your dbt_project.yml file to False.
{{ config(enabled=var('using_bill', True)) }}

select * 
from {{ var('bills_linkedtxn') }}
