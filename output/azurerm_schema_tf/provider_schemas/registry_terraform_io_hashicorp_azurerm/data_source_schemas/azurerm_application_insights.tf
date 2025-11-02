data "azurerm_application_insights" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  app_id = string (Computed)
  application_type = string (Computed)
  connection_string = string (Computed)
  id = string (Optional, Computed)
  instrumentation_key = string (Computed)
  location = string (Computed)
  retention_in_days = number (Computed)
  tags = ['map', 'string'] (Computed)
  workspace_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
