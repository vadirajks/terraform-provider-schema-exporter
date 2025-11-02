data "azurerm_storage_sync_group" "name" {
  name = string (Required)
  storage_sync_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
