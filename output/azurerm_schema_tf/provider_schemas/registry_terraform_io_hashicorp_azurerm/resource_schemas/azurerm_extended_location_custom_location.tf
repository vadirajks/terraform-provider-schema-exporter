resource "azurerm_extended_location_custom_location" "name" {
  cluster_extension_ids = ['list', 'string'] (Required)
  host_resource_id = string (Required)
  location = string (Required)
  name = string (Required)
  namespace = string (Required)
  resource_group_name = string (Required)
  display_name = string (Optional)
  host_type = string (Optional)
  id = string (Optional, Computed)

  authentication block "list" (Optional) {
    value = string (Required)
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
