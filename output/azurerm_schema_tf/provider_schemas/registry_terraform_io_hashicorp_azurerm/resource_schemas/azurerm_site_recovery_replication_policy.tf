resource "azurerm_site_recovery_replication_policy" "name" {
  application_consistent_snapshot_frequency_in_minutes = number (Required)
  name = string (Required)
  recovery_point_retention_in_minutes = number (Required)
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
