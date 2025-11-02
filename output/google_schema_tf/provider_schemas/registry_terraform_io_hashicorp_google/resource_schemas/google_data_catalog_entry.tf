resource "google_data_catalog_entry" "name" {
  entry_group = string (Required)
  entry_id = string (Required)
  bigquery_date_sharded_spec = ['list', ['object', {'dataset': 'string', 'shard_count': 'number', 'table_prefix': 'string'}]] (Computed)
  bigquery_table_spec = ['list', ['object', {'table_source_type': 'string', 'table_spec': ['list', ['object', {'grouped_entry': 'string'}]], 'view_spec': ['list', ['object', {'view_query': 'string'}]]}]] (Computed)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  integrated_system = string (Computed)
  linked_resource = string (Optional, Computed)
  name = string (Computed)
  schema = string (Optional)
  type = string (Optional)
  user_specified_system = string (Optional)
  user_specified_type = string (Optional)

  gcs_fileset_spec block "list" (Optional) {
    file_patterns = ['list', 'string'] (Required)
    sample_gcs_file_specs = ['list', ['object', {'file_path': 'string', 'size_bytes': 'number'}]] (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
