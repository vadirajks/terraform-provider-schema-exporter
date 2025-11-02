data "azurerm_private_dns_zone_virtual_network_link" "name" {
  name = string (Required)
  private_dns_zone_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  registration_enabled = bool (Computed)
  resolution_policy = string (Computed)
  tags = ['map', 'string'] (Computed)
  virtual_network_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
