data "google_backup_dr_data_source_reference" "name" {
  data_source_reference_id = string (Required)
  location = string (Required)
  backup_config_state = string (Computed)
  backup_count = number (Computed)
  data_source = string (Computed)
  gcp_resource_name = string (Computed)
  id = string (Optional, Computed)
  last_backup_state = string (Computed)
  last_successful_backup_time = string (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  resource_type = string (Computed)
}
