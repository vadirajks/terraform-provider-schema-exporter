resource "azurerm_site_recovery_services_vault_hyperv_site" "name" {
  name = string (Required)
  recovery_vault_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
