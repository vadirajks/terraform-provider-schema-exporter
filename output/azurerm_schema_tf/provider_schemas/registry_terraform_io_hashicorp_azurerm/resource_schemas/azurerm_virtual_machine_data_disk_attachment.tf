resource "azurerm_virtual_machine_data_disk_attachment" "name" {
  caching = string (Required)
  lun = number (Required)
  managed_disk_id = string (Required)
  virtual_machine_id = string (Required)
  create_option = string (Optional)
  id = string (Optional, Computed)
  write_accelerator_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
