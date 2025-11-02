data "azurerm_site_recovery_protection_container" "name" {
  name = string (Required)
  recovery_fabric_name = string (Required)
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
