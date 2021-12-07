--To disable this model, set the using_journal_entry variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_journal_entry', True)) }}

with base as (

    select *
    from {{ ref('stg_quickbooks__journal_entry_tmp') }}

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
                source_columns=adapter.get_columns_in_relation(ref('stg_quickbooks__journal_entry_tmp')),
                staging_columns=get_journal_entry_columns()
            )
        }}

    from base
),

final as (

    select
        cast(id as {{ dbt_utils.type_int() }}) as journal_entry_id,
        adjustment as is_adjustment,
        created_at,
        currency_id,
        cast(doc_number as {{ dbt_utils.type_string() }}) as doc_number,
        exchange_rate,
        private_note,
        total_amount,
        transaction_date
    from fields
)

select *
from final
