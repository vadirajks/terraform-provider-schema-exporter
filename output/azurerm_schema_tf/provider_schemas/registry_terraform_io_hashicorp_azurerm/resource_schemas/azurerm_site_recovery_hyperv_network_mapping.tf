resource "azurerm_site_recovery_hyperv_network_mapping" "name" {
  name = string (Required)
  recovery_vault_id = string (Required)
  source_network_name = string (Required)
  source_system_center_virtual_machine_manager_name = string (Required)
  target_network_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
