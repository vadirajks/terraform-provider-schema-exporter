data "azurerm_container_registry_token" "name" {
  container_registry_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  enabled = bool (Computed)
  id = string (Optional, Computed)
  scope_map_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
