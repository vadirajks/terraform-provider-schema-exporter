resource "azurerm_virtual_hub_security_partner_provider" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  security_provider_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  virtual_hub_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
