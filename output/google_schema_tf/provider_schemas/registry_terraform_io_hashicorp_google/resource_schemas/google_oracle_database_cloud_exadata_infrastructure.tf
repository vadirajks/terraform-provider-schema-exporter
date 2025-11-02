resource "google_oracle_database_cloud_exadata_infrastructure" "name" {
  cloud_exadata_infrastructure_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  deletion_protection = bool (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  entitlement_id = string (Computed)
  gcp_oracle_zone = string (Optional, Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  properties block "list" (Optional) {
    shape = string (Required)
    activated_storage_count = number (Computed)
    additional_storage_count = number (Computed)
    available_storage_size_gb = number (Computed)
    compute_count = number (Optional)
    cpu_count = number (Computed)
    data_storage_size_tb = number (Computed)
    db_node_storage_size_gb = number (Computed)
    db_server_version = string (Computed)
    max_cpu_count = number (Computed)
    max_data_storage_tb = number (Computed)
    max_db_node_storage_size_gb = number (Computed)
    max_memory_gb = number (Computed)
    memory_size_gb = number (Computed)
    monthly_db_server_version = string (Computed)
    monthly_storage_server_version = string (Computed)
    next_maintenance_run_id = string (Computed)
    next_maintenance_run_time = string (Computed)
    next_security_maintenance_run_time = string (Computed)
    oci_url = string (Computed)
    ocid = string (Computed)
    state = string (Computed)
    storage_count = number (Optional)
    storage_server_version = string (Computed)
    total_storage_size_gb = number (Optional, Computed)

    customer_contacts block "list" (Optional) {
      email = string (Required)
    }

    maintenance_window block "list" (Optional) {
      custom_action_timeout_mins = number (Optional, Computed)
      days_of_week = ['list', 'string'] (Optional, Computed)
      hours_of_day = ['list', 'number'] (Optional, Computed)
      is_custom_action_timeout_enabled = bool (Optional, Computed)
      lead_time_week = number (Optional, Computed)
      months = ['list', 'string'] (Optional, Computed)
      patching_mode = string (Optional, Computed)
      preference = string (Optional, Computed)
      weeks_of_month = ['list', 'number'] (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
