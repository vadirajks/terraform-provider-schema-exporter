resource "azurerm_storage_data_lake_gen2_path" "name" {
  filesystem_name = string (Required)
  path = string (Required)
  resource = string (Required)
  storage_account_id = string (Required)
  group = string (Optional, Computed)
  id = string (Optional, Computed)
  owner = string (Optional, Computed)

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
