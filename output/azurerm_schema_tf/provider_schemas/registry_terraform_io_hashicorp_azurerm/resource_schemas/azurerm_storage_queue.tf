resource "azurerm_storage_queue" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional)
  resource_manager_id = string (Computed)
  storage_account_id = string (Optional)
  storage_account_name = string (Optional)
  url = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
