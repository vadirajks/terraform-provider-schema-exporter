data "azurerm_site_recovery_fabric" "name" {
  name = string (Required)
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
