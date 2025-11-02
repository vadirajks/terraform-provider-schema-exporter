resource "azurerm_api_management_standalone_gateway" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  backend_subnet_id = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  virtual_network_type = string (Optional)

  sku block "list" (Required) {
    name = string (Required)
    capacity = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
