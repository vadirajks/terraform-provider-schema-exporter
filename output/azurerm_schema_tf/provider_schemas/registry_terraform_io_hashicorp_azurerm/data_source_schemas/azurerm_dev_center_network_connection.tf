data "azurerm_dev_center_network_connection" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  domain_join_type = string (Computed)
  domain_name = string (Computed)
  domain_username = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  organization_unit = string (Computed)
  subnet_id = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
