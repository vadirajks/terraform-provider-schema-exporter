resource "azurerm_storage_mover_target_endpoint" "name" {
  name = string (Required)
  storage_account_id = string (Required)
  storage_container_name = string (Required)
  storage_mover_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
