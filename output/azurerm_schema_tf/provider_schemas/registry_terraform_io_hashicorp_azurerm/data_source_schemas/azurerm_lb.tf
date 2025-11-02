data "azurerm_lb" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  frontend_ip_configuration = ['list', ['object', {'id': 'string', 'name': 'string', 'private_ip_address': 'string', 'private_ip_address_allocation': 'string', 'private_ip_address_version': 'string', 'public_ip_address_id': 'string', 'subnet_id': 'string', 'zones': ['list', 'string']}]] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  private_ip_address = string (Computed)
  private_ip_addresses = ['list', 'string'] (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
