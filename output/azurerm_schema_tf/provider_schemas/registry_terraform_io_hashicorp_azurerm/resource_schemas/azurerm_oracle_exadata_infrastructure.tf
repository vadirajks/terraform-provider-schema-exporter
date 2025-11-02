resource "azurerm_oracle_exadata_infrastructure" "name" {
  compute_count = number (Required)
  display_name = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  shape = string (Required)
  storage_count = number (Required)
  zones = ['set', 'string'] (Required)
  customer_contacts = ['list', 'string'] (Optional, Computed)
  database_server_type = string (Optional, Computed)
  id = string (Optional, Computed)
  storage_server_type = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  maintenance_window block "list" (Optional) {
    days_of_week = ['list', 'string'] (Optional, Computed)
    hours_of_day = ['list', 'number'] (Optional, Computed)
    lead_time_in_weeks = number (Optional, Computed)
    months = ['list', 'string'] (Optional, Computed)
    patching_mode = string (Optional, Computed)
    preference = string (Optional, Computed)
    weeks_of_month = ['list', 'number'] (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
