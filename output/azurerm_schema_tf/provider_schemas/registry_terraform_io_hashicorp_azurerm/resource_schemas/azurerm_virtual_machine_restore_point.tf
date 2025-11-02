resource "azurerm_virtual_machine_restore_point" "name" {
  name = string (Required)
  virtual_machine_restore_point_collection_id = string (Required)
  crash_consistency_mode_enabled = bool (Optional)
  excluded_disks = ['set', 'string'] (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
