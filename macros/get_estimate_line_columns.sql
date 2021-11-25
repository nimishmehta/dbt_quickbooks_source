{% macro get_estimate_line_columns() %}

{% set columns = [
    {"name": "account_id", "alias": "account_id", "" "datatype": dbt_utils.type_int()},
    {"name": "amount", "alias": "amount", "" "datatype": dbt_utils.type_float()},
    {"name": "bundle_id", "alias": "bundle_id", "" "datatype": dbt_utils.type_int()},
    {"name": "bundle_quantity", "alias": "bundle_quantity", "" "datatype": dbt_utils.type_float()},
    {"name": "description", "alias": "description", "" "datatype": dbt_utils.type_string()},
    {"name": "description_service_date", "alias": "description_service_date", "" "datatype": dbt_utils.type_timestamp()},
    {"name": "description_tax_code_id", "alias": "description_tax_code_id", "" "datatype": dbt_utils.type_int()},
    {"name": "discount_account_id", "alias": "discount_account_id", "" "datatype": dbt_utils.type_int()},
    {"name": "discount_class_id", "alias": "discount_class_id", "" "datatype": dbt_utils.type_int()},
    {"name": "discount_discount_percent", "alias": "discount_discount_percent", "" "datatype": dbt_utils.type_float()},
    {"name": "discount_percent_based", "alias": "discount_percent_based", "" "datatype": "boolean"},
    {"name": "discount_tax_code_id", "alias": "discount_tax_code_id", "" "datatype": dbt_utils.type_int()},
    {"name": "estimate_id", "alias": "estimate_id", "" "datatype": dbt_utils.type_int()},
    {"name": "Id", "alias": "index", "" "datatype": dbt_utils.type_int()},
    {"name": "item_id", "alias": "item_id", "" "datatype": dbt_utils.type_int()},
    {"name": "quantity", "alias": "quantity", "" "datatype": dbt_utils.type_float()},
    {"name": "sales_item_account_id", "alias": "sales_item_account_id", "" "datatype": dbt_utils.type_int()},
    {"name": "sales_item_class_id", "alias": "sales_item_class_id", "" "datatype": dbt_utils.type_int()},
    {"name": "sales_item_discount_amount", "alias": "sales_item_discount_amount", "" "datatype": dbt_utils.type_float()},
    {"name": "sales_item_discount_rate", "alias": "sales_item_discount_rate", "" "datatype": dbt_utils.type_float()},
    {"name": "sales_item_item_id", "alias": "sales_item_item_id", "" "datatype": dbt_utils.type_int()},
    {"name": "sales_item_quantity", "alias": "sales_item_quantity", "" "datatype": dbt_utils.type_float()},
    {"name": "sales_item_service_date", "alias": "sales_item_service_date", "" "datatype": dbt_utils.type_timestamp()},
    {"name": "sales_item_tax_code_id", "alias": "sales_item_tax_code_id", "" "datatype": dbt_utils.type_int()},
    {"name": "sales_item_unit_price", "alias": "sales_item_unit_price", "" "datatype": dbt_utils.type_float()},
    {"name": "sub_total_item_id", "alias": "sub_total_item_id", "" "datatype": dbt_utils.type_int()},
    {"name": "tax_code_id", "alias": "tax_code_id", "" "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
