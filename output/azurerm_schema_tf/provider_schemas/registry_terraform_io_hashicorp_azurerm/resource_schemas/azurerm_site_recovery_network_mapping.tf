resource "azurerm_site_recovery_network_mapping" "name" {
  name = string (Required)
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  source_network_id = string (Required)
  source_recovery_fabric_name = string (Required)
  target_network_id = string (Required)
  target_recovery_fabric_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
