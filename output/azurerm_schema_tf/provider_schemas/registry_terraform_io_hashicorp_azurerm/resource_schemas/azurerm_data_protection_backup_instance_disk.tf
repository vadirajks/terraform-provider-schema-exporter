resource "azurerm_data_protection_backup_instance_disk" "name" {
  backup_policy_id = string (Required)
  disk_id = string (Required)
  location = string (Required)
  name = string (Required)
  snapshot_resource_group_name = string (Required)
  vault_id = string (Required)
  id = string (Optional, Computed)
  snapshot_subscription_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
