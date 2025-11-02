resource "azurerm_private_dns_zone_virtual_network_link" "name" {
  name = string (Required)
  private_dns_zone_name = string (Required)
  resource_group_name = string (Required)
  virtual_network_id = string (Required)
  id = string (Optional, Computed)
  registration_enabled = bool (Optional)
  resolution_policy = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
