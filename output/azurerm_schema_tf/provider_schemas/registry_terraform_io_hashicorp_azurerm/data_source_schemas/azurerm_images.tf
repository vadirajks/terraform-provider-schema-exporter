data "azurerm_images" "name" {
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  images = ['list', ['object', {'data_disk': ['list', ['object', {'blob_uri': 'string', 'caching': 'string', 'lun': 'number', 'managed_disk_id': 'string', 'size_gb': 'number'}]], 'location': 'string', 'name': 'string', 'os_disk': ['list', ['object', {'blob_uri': 'string', 'caching': 'string', 'disk_encryption_set_id': 'string', 'managed_disk_id': 'string', 'os_state': 'string', 'os_type': 'string', 'size_gb': 'number'}]], 'tags': ['map', 'string'], 'zone_resilient': 'bool'}]] (Computed)
  tags_filter = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
