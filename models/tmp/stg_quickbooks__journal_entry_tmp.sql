--To disable this model, set the using_journal_entry variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_journal_entry', True)) }}

select
    {{ var('journal_entries') }}.*,
    {{ var('journal_entries_currencyref') }}.value as currency_id
from {{ var('journal_entries') }}
left join {{ var('journal_entries_currencyref') }} using (_airbyte_journal_entries_hashid)
left join {{ var('journal_entries_taxrateref') }} using (_airbyte_journal_entries_hashid)