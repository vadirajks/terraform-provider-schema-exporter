resource "azurerm_storage_share" "name" {
  name = string (Required)
  quota = number (Required)
  access_tier = string (Optional, Computed)
  enabled_protocol = string (Optional)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional, Computed)
  resource_manager_id = string (Computed)
  storage_account_id = string (Optional)
  storage_account_name = string (Optional)
  url = string (Computed)

  acl block "set" (Optional) {
    id = string (Required)

    access_policy block "list" (Optional) {
      permissions = string (Required)
      expiry = string (Optional)
      start = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
