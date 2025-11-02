resource "azurerm_traffic_manager_external_endpoint" "name" {
  name = string (Required)
  profile_id = string (Required)
  target = string (Required)
  always_serve_enabled = bool (Optional)
  enabled = bool (Optional)
  endpoint_location = string (Optional, Computed)
  geo_mappings = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  priority = number (Optional, Computed)
  weight = number (Optional)

  custom_header block "list" (Optional) {
    name = string (Required)
    value = string (Required)
  }

  subnet block "list" (Optional) {
    first = string (Required)
    last = string (Optional)
    scope = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
