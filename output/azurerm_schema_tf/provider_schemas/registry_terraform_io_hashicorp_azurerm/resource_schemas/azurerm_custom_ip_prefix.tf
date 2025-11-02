resource "azurerm_custom_ip_prefix" "name" {
  cidr = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  commissioning_enabled = bool (Optional)
  id = string (Optional, Computed)
  internet_advertising_disabled = bool (Optional)
  parent_custom_ip_prefix_id = string (Optional)
  roa_validity_end_date = string (Optional)
  tags = ['map', 'string'] (Optional)
  wan_validation_signed_message = string (Optional)
  zones = ['set', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
