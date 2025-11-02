data "azurerm_storage_containers" "name" {
  storage_account_id = string (Required)
  containers = ['list', ['object', {'data_plane_id': 'string', 'name': 'string', 'resource_manager_id': 'string'}]] (Computed)
  id = string (Optional, Computed)
  name_prefix = string (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
