--To disable this model, set the using_department variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_class', True)) }}

select
	{{ var('classes') }}.*,
	{{ var('classes_metadata') }}.lastupdatedtime as updated_at,
	{{ var('classes_metadata') }}.createtime as created_at,
	{{ var('classes_parentref') }}.value as parent_class_id
from {{ var('classes') }}
join {{ var('classes_metadata') }} using (_airbyte_classes_hashid)
join {{ var('classes_parentref') }} using (_airbyte_classes_hashid)
