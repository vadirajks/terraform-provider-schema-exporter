data "azurerm_dev_center_catalog" "name" {
  dev_center_id = string (Required)
  name = string (Required)
  catalog_adogit = ['list', ['object', {'branch': 'string', 'key_vault_key_url': 'string', 'path': 'string', 'uri': 'string'}]] (Computed)
  catalog_github = ['list', ['object', {'branch': 'string', 'key_vault_key_url': 'string', 'path': 'string', 'uri': 'string'}]] (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
