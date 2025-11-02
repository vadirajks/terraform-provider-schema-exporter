resource "azurerm_postgresql_virtual_network_rule" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  subnet_id = string (Required)
  id = string (Optional, Computed)
  ignore_missing_vnet_service_endpoint = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
