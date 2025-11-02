resource "azurerm_recovery_services_vault" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  classic_vmware_replication_enabled = bool (Optional)
  cross_region_restore_enabled = bool (Optional)
  id = string (Optional, Computed)
  immutability = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  soft_delete_enabled = bool (Optional)
  storage_mode_type = string (Optional)
  tags = ['map', 'string'] (Optional)

  encryption block "list" (Optional) {
    infrastructure_encryption_enabled = bool (Required)
    key_id = string (Required)
    use_system_assigned_identity = bool (Optional)
    user_assigned_identity_id = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  monitoring block "list" (Optional) {
    alerts_for_all_job_failures_enabled = bool (Optional)
    alerts_for_critical_operation_failures_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
