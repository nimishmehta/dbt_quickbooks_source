{% macro get_class_columns() %}

{% set columns = [
    {"name": "active", "alias": "active", "quote": true, "datatype": "boolean"},
    {"name": "created_at", "alias": "created_at", "quote": true, "datatype": dbt_utils.type_timestamp()},
    {"name": "fullyqualifiedname", "alias": "fully_qualified_name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "Id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "Name", "alias": "name", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "parent_class_id", "alias": "parent_class_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "subclass", "alias": "sub_class", "quote": true, "datatype": "boolean"},
    {"name": "synctoken", "alias": "sync_token", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "updated_at", "alias": "updated_at", "quote": true, "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}