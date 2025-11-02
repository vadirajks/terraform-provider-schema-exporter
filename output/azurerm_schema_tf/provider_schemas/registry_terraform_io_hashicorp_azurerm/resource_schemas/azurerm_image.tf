resource "azurerm_image" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  hyper_v_generation = string (Optional)
  id = string (Optional, Computed)
  source_virtual_machine_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  zone_resilient = bool (Optional)

  data_disk block "list" (Optional) {
    storage_type = string (Required)
    blob_uri = string (Optional, Computed)
    caching = string (Optional)
    disk_encryption_set_id = string (Optional)
    lun = number (Optional)
    managed_disk_id = string (Optional)
    size_gb = number (Optional, Computed)
  }

  os_disk block "list" (Optional) {
    storage_type = string (Required)
    blob_uri = string (Optional, Computed)
    caching = string (Optional)
    disk_encryption_set_id = string (Optional)
    managed_disk_id = string (Optional, Computed)
    os_state = string (Optional)
    os_type = string (Optional)
    size_gb = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
