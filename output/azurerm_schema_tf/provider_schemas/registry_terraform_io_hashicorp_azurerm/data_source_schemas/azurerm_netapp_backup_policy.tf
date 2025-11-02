data "azurerm_netapp_backup_policy" "name" {
  account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  daily_backups_to_keep = number (Computed)
  enabled = bool (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  monthly_backups_to_keep = number (Computed)
  tags = ['map', 'string'] (Computed)
  weekly_backups_to_keep = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
