data "azurerm_extended_location_custom_location" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  authentication = ['list', ['object', {'type': 'string', 'value': 'string'}]] (Computed)
  cluster_extension_ids = ['list', 'string'] (Computed)
  display_name = string (Computed)
  host_resource_id = string (Computed)
  host_type = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  namespace = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
