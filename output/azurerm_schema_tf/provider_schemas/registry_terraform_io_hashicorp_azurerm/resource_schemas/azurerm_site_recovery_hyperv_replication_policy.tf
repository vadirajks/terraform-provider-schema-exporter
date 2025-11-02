resource "azurerm_site_recovery_hyperv_replication_policy" "name" {
  application_consistent_snapshot_frequency_in_hours = number (Required)
  name = string (Required)
  recovery_point_retention_in_hours = number (Required)
  recovery_vault_id = string (Required)
  replication_interval_in_seconds = number (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
