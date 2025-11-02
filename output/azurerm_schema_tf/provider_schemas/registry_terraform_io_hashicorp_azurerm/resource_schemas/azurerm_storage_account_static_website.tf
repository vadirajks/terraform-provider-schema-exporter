resource "azurerm_storage_account_static_website" "name" {
  storage_account_id = string (Required)
  error_404_document = string (Optional)
  id = string (Optional, Computed)
  index_document = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
