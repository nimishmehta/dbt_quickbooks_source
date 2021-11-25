{% macro get_refund_receipt_line_columns() %}

{% set columns = [
    {"name": "amount", "alias": "amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "bundle_id", "alias": "bundle_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "bundle_quantity", "alias": "bundle_quantity", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "description", "alias": "description", "quote": true, "datatype": dbt_utils.type_string()},
    {"name": "description_service_date", "alias": "description_service_date", "quote": true, "datatype": "date"},
    {"name": "description_tax_code_id", "alias": "description_tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "discount_account_id", "alias": "discount_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "discount_class_id", "alias": "discount_class_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "discount_discount_percent", "alias": "discount_discount_percent", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "discount_percent_based", "alias": "discount_percent_based", "quote": true, "datatype": "boolean"},
    {"name": "discount_tax_code_id", "alias": "discount_tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "index", "alias": "index", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "refund_id", "alias": "refund_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "sales_item_account_id", "alias": "sales_item_account_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "sales_item_class_id", "alias": "sales_item_class_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "sales_item_discount_amount", "alias": "sales_item_discount_amount", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "sales_item_discount_rate", "alias": "sales_item_discount_rate", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "sales_item_item_id", "alias": "sales_item_item_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "sales_item_quantity", "alias": "sales_item_quantity", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "sales_item_service_date", "alias": "sales_item_service_date", "quote": true, "datatype": "date"},
    {"name": "sales_item_tax_code_id", "alias": "sales_item_tax_code_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "sales_item_unit_price", "alias": "sales_item_unit_price", "quote": true, "datatype": dbt_utils.type_float()},
    {"name": "sub_total_item_id", "alias": "sub_total_item_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
