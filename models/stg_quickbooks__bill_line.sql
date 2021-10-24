--To disable this model, set the using_bill variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_bill', True)) }}

with base as (

    select * 
    from {{ ref('stg_quickbooks__bill_line_tmp') }}

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
                source_columns=adapter.get_columns_in_relation(ref('stg_quickbooks__bill_line_tmp')),
                staging_columns=get_bill_line_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        cast(bill_id as {{ dbt_utils.type_int() }}) as bill_id,
        index,
        cast(account_expense_account_id as {{ dbt_utils.type_int() }}) as account_expense_account_id,
        account_expense_class_id,
        item_expense_class_id,
        account_expense_billable_status,
        account_expense_tax_code_id,
        cast(account_expense_customer_id as {{ dbt_utils.type_int() }}) as account_expense_customer_id,
        cast(item_expense_item_id as {{ dbt_utils.type_int() }}) as item_expense_item_id,
        cast(item_expense_customer_id as {{ dbt_utils.type_int() }}) as item_expense_customer_id,
        item_expense_billable_status,
        amount,
        description
    from fields
)

select * 
from final
