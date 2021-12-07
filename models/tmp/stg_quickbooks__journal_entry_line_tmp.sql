--To disable this model, set the using_journal_entry variable within your dbt_project.yml file to False.
{{ config(enabled=var('using_journal_entry', True)) }}

select {{ var('journal_entries_line') }}.*,
billablestatus as billable_status,
taxamount as tax_amount,
postingtype as posting_type,
{{ var('journal_entries_line__rylinedetail_classref') }}.value as class_id,
{{ var('journal_entries_line__edetail_departmentref') }}.value as department_id,
{{ var('journal_entries') }}."Id" as journal_entry_id,
{{ var('journal_entries_line__linedetail_taxcoderef') }}.value as tax_code_id
from {{ var('journal_entries_line') }}
left join {{ var('journal_entries') }} using (_airbyte_journal_entries_hashid)
left join {{ var('journal_entries_line_journalentrylinedetail') }} using (_airbyte_line_hashid)
left join {{ var('journal_entries_line__detail_journalcoderef') }} using (_airbyte_journalentrylinedetail_hashid)
left join {{ var('journal_entries_line__edetail_departmentref') }} using (_airbyte_journalentrylinedetail_hashid)
left join {{ var('journal_entries_line__linedetail_accountref') }} using (_airbyte_journalentrylinedetail_hashid)
left join {{ var('journal_entries_line__linedetail_taxcoderef') }} using (_airbyte_journalentrylinedetail_hashid)
left join {{ var('journal_entries_line__rylinedetail_classref') }} using (_airbyte_journalentrylinedetail_hashid)
left join {{ var('journal_entries_line__ntrylinedetail_entity') }} using (_airbyte_journalentrylinedetail_hashid)
left join {{ var('journal_entries_line__tail_entity_entityref') }} using (_airbyte_entity_hashid)