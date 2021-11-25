{% macro get_account_columns() %}

{% set columns = [
    {"name": "acctnum", "alias": "account_number", "quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "accountsubtype", "alias": "account_sub_type", "quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "accounttype", "alias": "account_type", "quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "active", "alias": "active", "quote": "true", "datatype": "boolean"},
    {"name": "currentbalance", "alias": "balance", "quote": "true", "datatype": dbt_utils.type_float()},
    {"name": "currentbalancewithsubaccounts", "alias": "balance_with_sub_accounts", "quote": "true", "datatype": dbt_utils.type_float()},
    {"name": "classification", "alias": "classification", "quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "created_at", "alias": "created_at", "quote": "true", "datatype": dbt_utils.type_timestamp()},
    {"name": "currency_id", "alias": "currency_id", "quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "description", "alias": "description", "quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "fullyqualifiedname", "alias": "fully_qualified_name", "quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "Id", "alias": "id", "quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "Name", "alias": "name", "quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "parent_account_id", "alias": "parent_account_id", "quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "subaccount", "alias": "sub_account", "quote": "true", "datatype": "boolean"},
    {"name": "sync_token", "alias": "sync_token", "quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "tax_code_id", "alias": "tax_code_id", "quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "updated_at", "alias": "updated_at", "quote": "true", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
