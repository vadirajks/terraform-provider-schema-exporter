resource "azurerm_storage_sync" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  incoming_traffic_policy = string (Optional)
  registered_servers = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
