data "azurerm_private_dns_resolver" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)
  virtual_network_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
