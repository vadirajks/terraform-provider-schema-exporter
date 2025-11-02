resource "azurerm_dev_center_network_connection" "name" {
  domain_join_type = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  subnet_id = string (Required)
  domain_name = string (Optional)
  domain_password = string (Optional)
  domain_username = string (Optional)
  id = string (Optional, Computed)
  organization_unit = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
