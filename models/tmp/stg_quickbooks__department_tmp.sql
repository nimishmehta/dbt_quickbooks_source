--To disable this model, set the using_department variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_department', True)) }}

select {{ var('departments') }}.*,
{{ var("departments_metadata") }}.createtime as created_at,
{{ var("departments_metadata") }}.lastupdatedtime as updated_at,
{{ var("departments_parentref") }}.value as parent_department_id
from {{ var('departments') }}
left join {{ var("departments_parentref") }} using (_airbyte_departments_hashid)
left join {{ var("departments_metadata") }} using (_airbyte_departments_hashid)