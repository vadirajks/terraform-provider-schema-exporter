resource "azurerm_private_dns_resolver" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  virtual_network_id = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
