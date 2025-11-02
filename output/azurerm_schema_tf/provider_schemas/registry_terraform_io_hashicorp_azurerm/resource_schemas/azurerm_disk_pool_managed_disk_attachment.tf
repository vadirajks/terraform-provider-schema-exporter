resource "azurerm_disk_pool_managed_disk_attachment" "name" {
  disk_pool_id = string (Required)
  managed_disk_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
