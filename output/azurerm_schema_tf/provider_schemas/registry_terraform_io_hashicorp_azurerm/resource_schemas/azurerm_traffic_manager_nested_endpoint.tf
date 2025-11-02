resource "azurerm_traffic_manager_nested_endpoint" "name" {
  minimum_child_endpoints = number (Required)
  name = string (Required)
  profile_id = string (Required)
  target_resource_id = string (Required)
  enabled = bool (Optional)
  endpoint_location = string (Optional, Computed)
  geo_mappings = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  minimum_required_child_endpoints_ipv4 = number (Optional)
  minimum_required_child_endpoints_ipv6 = number (Optional)
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
