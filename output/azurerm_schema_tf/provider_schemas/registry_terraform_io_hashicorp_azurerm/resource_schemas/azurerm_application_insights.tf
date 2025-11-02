resource "azurerm_application_insights" "name" {
  application_type = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  app_id = string (Computed)
  connection_string = string (Computed)
  daily_data_cap_in_gb = number (Optional)
  daily_data_cap_notifications_disabled = bool (Optional)
  disable_ip_masking = bool (Optional)
  force_customer_storage_for_profiler = bool (Optional)
  id = string (Optional, Computed)
  instrumentation_key = string (Computed)
  internet_ingestion_enabled = bool (Optional)
  internet_query_enabled = bool (Optional)
  local_authentication_disabled = bool (Optional)
  retention_in_days = number (Optional)
  sampling_percentage = number (Optional)
  tags = ['map', 'string'] (Optional)
  workspace_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
