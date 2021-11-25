{% macro get_bill_linked_txn_columns() %}

{% set columns = [
    {"name": "bill_id", "alias": "bill_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "bill_payment_id", "alias": "bill_payment_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "index", "alias": "index", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
