{% macro get_bundle_columns() %}

{% set columns = [
    {"name": "active", "alias": "active", "quote": true, "datatype": "boolean"},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "description", "alias": "description", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "fully_qualified_name", "alias": "fully_qualified_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "Id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "name", "alias": "name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "print_grouped_items", "alias": "print_grouped_items", "quote": true, "datatype": "boolean"},
    {"name": "purchase_cost", "alias": "purchase_cost", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "sync_token", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "taxable", "alias": "taxable", "quote": true, "datatype": "boolean"},
    {"name": "unit_price", "alias": "unit_price", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
