--To disable this model, set the using_class variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_class', True)) }}

with base as (

    select * 
    from {{ ref('stg_quickbooks__class_tmp') }}

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
                source_columns=adapter.get_columns_in_relation(ref('stg_quickbooks__class_tmp')),
                staging_columns=get_class_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        id as class_id,
        active as is_active,
        created_at,
        updated_at,
        fully_qualified_name,
        name,
        sub_class as is_sub_class,
        parent_class_id
    from fields
)

select *
from final
