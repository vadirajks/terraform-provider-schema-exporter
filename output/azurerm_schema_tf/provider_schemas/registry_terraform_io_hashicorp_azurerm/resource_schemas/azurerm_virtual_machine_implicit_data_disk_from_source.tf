resource "azurerm_virtual_machine_implicit_data_disk_from_source" "name" {
  create_option = string (Required)
  disk_size_gb = number (Required)
  lun = number (Required)
  name = string (Required)
  source_resource_id = string (Required)
  virtual_machine_id = string (Required)
  caching = string (Optional)
  id = string (Optional, Computed)
  write_accelerator_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
