resource "azurerm_backup_protected_vm" "name" {
  recovery_vault_name = string (Required)
  resource_group_name = string (Required)
  backup_policy_id = string (Optional)
  exclude_disk_luns = ['set', 'number'] (Optional)
  id = string (Optional, Computed)
  include_disk_luns = ['set', 'number'] (Optional)
  protection_state = string (Optional, Computed)
  source_vm_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
