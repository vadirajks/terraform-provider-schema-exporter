resource "azurerm_netapp_backup_policy" "name" {
  account_name = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  daily_backups_to_keep = number (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  monthly_backups_to_keep = number (Optional)
  tags = ['map', 'string'] (Optional)
  weekly_backups_to_keep = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
