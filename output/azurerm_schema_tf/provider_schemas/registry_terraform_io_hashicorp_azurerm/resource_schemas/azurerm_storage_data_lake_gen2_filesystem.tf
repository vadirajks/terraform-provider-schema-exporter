resource "azurerm_storage_data_lake_gen2_filesystem" "name" {
  name = string (Required)
  storage_account_id = string (Required)
  default_encryption_scope = string (Optional, Computed)
  group = string (Optional, Computed)
  id = string (Optional, Computed)
  owner = string (Optional, Computed)
  properties = ['map', 'string'] (Optional)

  ace block "set" (Optional) {
    permissions = string (Required)
    type = string (Required)
    id = string (Optional)
    scope = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
