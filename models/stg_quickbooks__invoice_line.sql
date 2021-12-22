--To disable this model, set the using_invoice variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_invoice', True)) }}

with base as (

    select * 
    from {{ ref('stg_quickbooks__invoice_line_tmp') }}

),

fields as (

    select
        /*
        The below macro is used to generate the correct SQL for package staging models. It takes a list of columns 
        that are expected/needed (staging_columns from dbt_quickbooks_source/models/tmp/) and compares it with columns 
        in the source (source_columns from dbt_quickbooks_source/macros/).
        For more information refer to our dbt_fivetran_utils documentation (https://github.com/fivetran/dbt_fivetran_utils.git).
        */

        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_quickbooks__invoice_line_tmp')),
                staging_columns=get_invoice_line_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        cast(invoice_id as {{ dbt_utils.type_int() }}) as invoice_id,
        index,
        amount,
        cast(sales_item_account_id as {{ dbt_utils.type_int() }}) as sales_item_account_id,
        sales_item_item_id as sales_item_item_id,
        sales_item_class_id,
        sales_item_quantity,
        sales_item_unit_price,
        discount_account_id,
        discount_class_id,
        description,
        quantity,
        bundle_quantity,
        cast(bundle_id as {{ dbt_utils.type_int() }}) as bundle_id,
        cast(account_id as {{ dbt_utils.type_int() }}) as account_id,
        cast(item_id as {{ dbt_utils.type_int() }}) as item_id
    from fields
)

select * 
from final
