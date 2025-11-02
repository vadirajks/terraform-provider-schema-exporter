resource "azurerm_site_recovery_vmware_replicated_vm" "name" {
  appliance_name = string (Required)
  name = string (Required)
  physical_server_credential_name = string (Required)
  recovery_replication_policy_id = string (Required)
  recovery_vault_id = string (Required)
  source_vm_name = string (Required)
  target_resource_group_id = string (Required)
  target_vm_name = string (Required)
  default_log_storage_account_id = string (Optional)
  default_recovery_disk_type = string (Optional)
  default_target_disk_encryption_set_id = string (Optional)
  id = string (Optional, Computed)
  license_type = string (Optional)
  multi_vm_group_name = string (Optional)
  target_availability_set_id = string (Optional)
  target_boot_diagnostics_storage_account_id = string (Optional)
  target_network_id = string (Optional)
  target_proximity_placement_group_id = string (Optional)
  target_vm_size = string (Optional)
  target_zone = string (Optional)
  test_network_id = string (Optional)

  managed_disk block "list" (Optional) {
    disk_id = string (Required)
    target_disk_type = string (Required)
    log_storage_account_id = string (Optional)
    target_disk_encryption_set_id = string (Optional)
  }

  network_interface block "list" (Optional) {
    is_primary = bool (Required)
    source_mac_address = string (Required)
    target_static_ip = string (Optional)
    target_subnet_name = string (Optional)
    test_subnet_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
