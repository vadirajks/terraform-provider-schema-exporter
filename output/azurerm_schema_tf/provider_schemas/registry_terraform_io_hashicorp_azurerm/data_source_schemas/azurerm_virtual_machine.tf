data "azurerm_virtual_machine" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  power_state = string (Computed)
  private_ip_address = string (Computed)
  private_ip_addresses = ['list', 'string'] (Computed)
  public_ip_address = string (Computed)
  public_ip_addresses = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
