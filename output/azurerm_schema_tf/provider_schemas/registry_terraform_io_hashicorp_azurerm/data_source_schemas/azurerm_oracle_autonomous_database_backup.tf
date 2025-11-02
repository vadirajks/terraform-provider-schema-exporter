data "azurerm_oracle_autonomous_database_backup" "name" {
  autonomous_database_id = string (Required)
  name = string (Required)
  automatic = bool (Computed)
  autonomous_database_backup_ocid = string (Computed)
  autonomous_database_ocid = string (Computed)
  database_backup_size_in_tbs = number (Computed)
  database_version = string (Computed)
  display_name = string (Computed)
  id = string (Computed)
  lifecycle_details = string (Computed)
  lifecycle_state = string (Computed)
  location = string (Computed)
  provisioning_state = string (Computed)
  restorable = bool (Computed)
  retention_period_in_days = number (Computed)
  time_available_til = string (Computed)
  time_ended = string (Computed)
  time_started = string (Computed)
  type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
