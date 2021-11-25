{% macro get_invoice_linked_txn_columns() %}

{% set columns = [
    {"name": "charge_credit_id", "alias": "charge_credit_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "estimate_id", "alias": "estimate_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "index", "alias": "index", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "invoice_id", "alias": "invoice_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "payment_id", "alias": "payment_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "reimburse_charge_id", "alias": "reimburse_charge_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "statement_charge_id", "alias": "statement_charge_id", "quote": true, "datatype": dbt_utils.type_int()},
    {"name": "time_activity_id", "alias": "time_activity_id", "quote": true, "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}
