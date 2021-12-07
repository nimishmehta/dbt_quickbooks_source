{% macro get_item_columns() %}

{% set columns = [
    {"name": "active","alias": "active","quote": "true", "datatype": "boolean"},
    {"name": "asset_account_id","alias": "asset_account_id","quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "created_at","alias": "created_at","quote": "true", "datatype": dbt_utils.type_timestamp()},
    {"name": "description","alias": "description","quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "expense_account_id","alias": "expense_account_id","quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "fullyqualifiedname","alias": "fully_qualified_name","quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "Id","alias": "id","quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "income_account_id","alias": "income_account_id","quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "invstartdate","alias": "inventory_start_date","quote": "true", "datatype": "date"},
    {"name": "level","alias": "level","quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "Name","alias": "name","quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "domain","alias": "domain","quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "parent_item_id","alias": "parent_item_id","quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "purchasecost","alias": "purchase_cost","quote": "true", "datatype": dbt_utils.type_float()},
    {"name": "purchasedesc","alias": "purchase_description","quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "purchase_tax_code_id","alias": "purchase_tax_code_id","quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "purchase_tax_included","alias": "purchase_tax_included","quote": "true", "datatype": "boolean"},
    {"name": "qtyonhand","alias": "quantity_on_hand","quote": "true", "datatype": dbt_utils.type_float()},
    {"name": "sales_tax_code_id","alias": "sales_tax_code_id","quote": "true", "datatype": dbt_utils.type_int()},
    {"name": "sales_tax_included","alias": "sales_tax_included","quote": "true", "datatype": "boolean"},
    {"name": "stock_keeping_unit","alias": "stock_keeping_unit","quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "sub_item","alias": "sub_item","quote": "true", "datatype": "boolean"},
    {"name": "synctoken","alias": "sync_token","quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "taxable","alias": "taxable","quote": "true", "datatype": "boolean"},
    {"name": "trackqtyonhand","alias": "track_quantity_on_hand","quote": "true", "datatype": "boolean"},
    {"name": "Type","alias": "type","quote": "true", "datatype": dbt_utils.type_string()},
    {"name": "unitprice","alias": "unit_price","quote": "true", "datatype": dbt_utils.type_float()},
    {"name": "updated_at","alias": "updated_at","quote": "true", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
