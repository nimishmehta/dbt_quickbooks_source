{% macro get_purchase_order_linked_txn_columns() %}

{% set columns = [
    {"name": "bill_id", "alias": "bill_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "index", "alias": "index", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "purchase_id", "alias": "purchase_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "purchase_order_id", "alias": "purchase_order_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "vendor_credit_id", "alias": "vendor_credit_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
