data "azurerm_key_vault_certificates" "name" {
  key_vault_id = string (Required)
  certificates = ['list', ['object', {'enabled': 'bool', 'id': 'string', 'name': 'string', 'tags': ['map', 'string']}]] (Computed)
  id = string (Optional, Computed)
  include_pending = bool (Optional)
  names = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
