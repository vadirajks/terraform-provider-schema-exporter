data "google_backup_dr_data_source_references" "name" {
  location = string (Required)
  resource_type = string (Required)
  data_source_references = ['list', ['object', {'backup_config_state': 'string', 'backup_count': 'number', 'data_source': 'string', 'gcp_resource_name': 'string', 'last_backup_state': 'string', 'last_successful_backup_time': 'string', 'name': 'string', 'resource_type': 'string'}]] (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
