resource "azurerm_storage_table" "name" {
  name = string (Required)
  storage_account_name = string (Required)
  id = string (Optional, Computed)
  resource_manager_id = string (Computed)

  acl block "set" (Optional) {
    id = string (Required)

    access_policy block "list" (Optional) {
      expiry = string (Required)
      permissions = string (Required)
      start = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
