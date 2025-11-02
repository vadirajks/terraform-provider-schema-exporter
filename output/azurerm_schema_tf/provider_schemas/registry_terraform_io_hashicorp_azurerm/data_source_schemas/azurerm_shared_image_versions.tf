data "azurerm_shared_image_versions" "name" {
  gallery_name = string (Required)
  image_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  images = ['list', ['object', {'exclude_from_latest': 'bool', 'id': 'string', 'location': 'string', 'managed_image_id': 'string', 'name': 'string', 'tags': ['map', 'string'], 'target_region': ['list', ['object', {'name': 'string', 'regional_replica_count': 'number', 'storage_account_type': 'string'}]]}]] (Computed)
  tags_filter = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
