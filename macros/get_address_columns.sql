{% macro get_address_columns() %}

{% set columns = [
    {"name": "city", "alias": "city", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "country", "alias": "country", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "country_sub_division_code", "alias": "country_sub_division_code", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "Id", "alias": "id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "latitude", "alias": "latitude", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "line_1", "alias": "line_1", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "line_2", "alias": "line_2", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "line_3", "alias": "line_3", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "line_4", "alias": "line_4", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "line_5", "alias": "line_5", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "longitude", "alias": "longitude", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "postal_code", "alias": "postal_code", "quote": true, "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
