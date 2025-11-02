resource "azurerm_log_analytics_query_pack_query" "name" {
  body = string (Required)
  display_name = string (Required)
  query_pack_id = string (Required)
  additional_settings_json = string (Optional)
  categories = ['list', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  resource_types = ['list', 'string'] (Optional)
  solutions = ['list', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
