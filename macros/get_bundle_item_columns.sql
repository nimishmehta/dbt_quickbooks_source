{% macro get_bundle_item_columns() %}

{% set columns = [
    {"name": "bundle_id", "datatype": dbt_utils.type_int()},
    {"name": "item_id", "datatype": dbt_utils.type_int()},
    {"name": "item_quantity", "datatype": dbt_utils.type_float()}
] %}

{{ return(columns) }}

{% endmacro %}
