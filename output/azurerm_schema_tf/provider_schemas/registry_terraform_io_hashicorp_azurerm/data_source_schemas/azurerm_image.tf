data "azurerm_image" "name" {
  resource_group_name = string (Required)
  data_disk = ['list', ['object', {'blob_uri': 'string', 'caching': 'string', 'lun': 'number', 'managed_disk_id': 'string', 'size_gb': 'number'}]] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  name = string (Optional)
  name_regex = string (Optional)
  os_disk = ['list', ['object', {'blob_uri': 'string', 'caching': 'string', 'managed_disk_id': 'string', 'os_state': 'string', 'os_type': 'string', 'size_gb': 'number'}]] (Computed)
  sort_descending = bool (Optional)
  tags = ['map', 'string'] (Computed)
  zone_resilient = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
