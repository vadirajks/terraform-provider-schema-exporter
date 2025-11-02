resource "azurerm_container_registry_token" "name" {
  container_registry_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scope_map_id = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
