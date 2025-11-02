resource "azurerm_oracle_autonomous_database" "name" {
  admin_password = string (Required)
  auto_scaling_enabled = bool (Required)
  auto_scaling_for_storage_enabled = bool (Required)
  backup_retention_period_in_days = number (Required)
  character_set = string (Required)
  compute_count = number (Required)
  compute_model = string (Required)
  data_storage_size_in_tbs = number (Required)
  db_version = string (Required)
  db_workload = string (Required)
  display_name = string (Required)
  license_model = string (Required)
  location = string (Required)
  mtls_connection_required = bool (Required)
  name = string (Required)
  national_character_set = string (Required)
  resource_group_name = string (Required)
  allowed_ips = ['set', 'string'] (Optional)
  customer_contacts = ['list', 'string'] (Optional, Computed)
  id = string (Optional, Computed)
  subnet_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  virtual_network_id = string (Optional)

  long_term_backup_schedule block "list" (Optional) {
    enabled = bool (Required)
    repeat_cadence = string (Required)
    retention_period_in_days = number (Required)
    time_of_backup = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
