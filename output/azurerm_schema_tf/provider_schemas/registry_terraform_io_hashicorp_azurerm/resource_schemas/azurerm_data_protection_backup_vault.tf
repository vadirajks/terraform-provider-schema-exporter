resource "azurerm_data_protection_backup_vault" "name" {
  datastore_type = string (Required)
  location = string (Required)
  name = string (Required)
  redundancy = string (Required)
  resource_group_name = string (Required)
  cross_region_restore_enabled = bool (Optional)
  id = string (Optional, Computed)
  immutability = string (Optional)
  retention_duration_in_days = number (Optional)
  soft_delete = string (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
