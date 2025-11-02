data "azurerm_container_registry_scope_map" "name" {
  container_registry_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  actions = ['list', 'string'] (Computed)
  description = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
