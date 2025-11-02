resource "azurerm_storage_container_immutability_policy" "name" {
  immutability_period_in_days = number (Required)
  storage_container_resource_manager_id = string (Required)
  id = string (Optional, Computed)
  locked = bool (Optional)
  protected_append_writes_all_enabled = bool (Optional)
  protected_append_writes_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
