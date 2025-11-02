data "azurerm_storage_table" "name" {
  name = string (Required)
  storage_account_name = string (Required)
  acl = ['set', ['object', {'access_policy': ['list', ['object', {'expiry': 'string', 'permissions': 'string', 'start': 'string'}]], 'id': 'string'}]] (Computed)
  id = string (Computed)
  resource_manager_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
