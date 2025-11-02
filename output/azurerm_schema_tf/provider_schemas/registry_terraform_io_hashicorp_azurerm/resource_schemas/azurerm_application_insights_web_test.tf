resource "azurerm_application_insights_web_test" "name" {
  application_insights_id = string (Required)
  configuration = string (Required)
  geo_locations = ['list', 'string'] (Required)
  kind = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  enabled = bool (Optional)
  frequency = number (Optional)
  id = string (Optional, Computed)
  retry_enabled = bool (Optional)
  synthetic_monitor_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  timeout = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
