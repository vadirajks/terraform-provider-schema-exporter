resource "azurerm_storage_mover_source_endpoint" "name" {
  host = string (Required)
  name = string (Required)
  storage_mover_id = string (Required)
  description = string (Optional)
  export = string (Optional)
  id = string (Optional, Computed)
  nfs_version = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
