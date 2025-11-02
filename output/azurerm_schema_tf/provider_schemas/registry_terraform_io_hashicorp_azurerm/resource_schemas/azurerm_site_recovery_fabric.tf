resource "azurerm_site_recovery_fabric" "name" {
  location = string (Required)
  name = string (Required)
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
