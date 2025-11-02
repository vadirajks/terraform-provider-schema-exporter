data "azurerm_storage_sync" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  incoming_traffic_policy = string (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
