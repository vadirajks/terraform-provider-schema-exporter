resource "azurerm_storage_share_directory" "name" {
  name = string (Required)
  storage_share_id = string (Required)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
