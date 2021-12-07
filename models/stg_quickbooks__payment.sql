--To disable this model, set the using_payment variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_payment', True)) }}

with base as (

    select * 
    from {{ ref('stg_quickbooks__payment_tmp') }}

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
                source_columns=adapter.get_columns_in_relation(ref('stg_quickbooks__payment_tmp')),
                staging_columns=get_payment_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        cast(id as {{ dbt_utils.type_int() }}) as payment_id,
        unapplied_amount,
        total_amount,
        currency_id,
        cast(receivable_account_id as {{ dbt_utils.type_int() }}) as receivable_account_id,
        cast(deposit_to_account_id as {{ dbt_utils.type_int() }}) as deposit_to_account_id,
        exchange_rate,
        transaction_date,
        cast(customer_id as {{ dbt_utils.type_int() }}) as customer_id
    from fields
)

select * 
from final
