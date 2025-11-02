data "azurerm_site_recovery_replication_policy" "name" {
  name = string (Required)
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  application_consistent_snapshot_frequency_in_minutes = number (Computed)
  id = string (Optional, Computed)
  recovery_point_retention_in_minutes = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
