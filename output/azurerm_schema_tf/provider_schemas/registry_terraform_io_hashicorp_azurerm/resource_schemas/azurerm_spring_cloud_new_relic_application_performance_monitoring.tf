resource "azurerm_spring_cloud_new_relic_application_performance_monitoring" "name" {
  app_name = string (Required)
  license_key = string (Required)
  name = string (Required)
  spring_cloud_service_id = string (Required)
  agent_enabled = bool (Optional)
  app_server_port = number (Optional)
  audit_mode_enabled = bool (Optional)
  auto_app_naming_enabled = bool (Optional)
  auto_transaction_naming_enabled = bool (Optional)
  custom_tracing_enabled = bool (Optional)
  globally_enabled = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
