resource "azurerm_recovery_services_vault_resource_guard_association" "name" {
  resource_guard_id = string (Required)
  vault_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
