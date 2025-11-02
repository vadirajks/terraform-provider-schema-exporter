resource "azurerm_stack_hci_virtual_hard_disk" "name" {
  custom_location_id = string (Required)
  disk_size_in_gb = number (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  block_size_in_bytes = number (Optional)
  disk_file_format = string (Optional)
  dynamic_enabled = bool (Optional)
  hyperv_generation = string (Optional)
  id = string (Optional, Computed)
  logical_sector_in_bytes = number (Optional)
  physical_sector_in_bytes = number (Optional)
  storage_path_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
