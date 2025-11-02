data "azurerm_storage_share" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional, Computed)
  quota = number (Computed)
  resource_manager_id = string (Computed)
  storage_account_id = string (Optional)
  storage_account_name = string (Optional)

  acl block "list" (Optional) {
    access_policy = ['list', ['object', {'expiry': 'string', 'permissions': 'string', 'start': 'string'}]] (Computed)
    id = string (Computed)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
