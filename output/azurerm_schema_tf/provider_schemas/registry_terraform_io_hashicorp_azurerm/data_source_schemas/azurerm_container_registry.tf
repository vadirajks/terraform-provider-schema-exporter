data "azurerm_container_registry" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  admin_enabled = bool (Computed)
  admin_password = string (Computed)
  admin_username = string (Computed)
  data_endpoint_enabled = bool (Computed)
  data_endpoint_host_names = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  login_server = string (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
