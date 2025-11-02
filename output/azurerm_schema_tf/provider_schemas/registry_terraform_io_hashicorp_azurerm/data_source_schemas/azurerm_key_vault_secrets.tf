data "azurerm_key_vault_secrets" "name" {
  key_vault_id = string (Required)
  id = string (Optional, Computed)
  names = ['list', 'string'] (Computed)
  secrets = ['list', ['object', {'enabled': 'bool', 'id': 'string', 'name': 'string', 'tags': ['map', 'string']}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
