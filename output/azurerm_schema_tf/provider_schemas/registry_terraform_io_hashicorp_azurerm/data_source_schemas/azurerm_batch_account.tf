data "azurerm_batch_account" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  account_endpoint = string (Computed)
  encryption = ['list', ['object', {'key_vault_key_id': 'string'}]] (Computed)
  id = string (Optional, Computed)
  key_vault_reference = ['list', ['object', {'id': 'string', 'url': 'string'}]] (Computed)
  location = string (Computed)
  pool_allocation_mode = string (Computed)
  primary_access_key = string (Computed)
  secondary_access_key = string (Computed)
  storage_account_id = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
