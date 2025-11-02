data "azurerm_container_group" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  ip_address = string (Computed)
  location = string (Computed)
  subnet_ids = ['set', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)
  zones = ['set', 'string'] (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
