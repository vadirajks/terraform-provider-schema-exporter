resource "azurerm_site_recovery_protection_container_mapping" "name" {
  name = string (Required)
  recovery_fabric_name = string (Required)
  recovery_replication_policy_id = string (Required)
  recovery_source_protection_container_name = string (Required)
  recovery_target_protection_container_id = string (Required)
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  automatic_update block "list" (Optional) {
    authentication_type = string (Optional)
    automation_account_id = string (Optional)
    enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
