data "azurerm_shared_image_version" "name" {
  gallery_name = string (Required)
  image_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  exclude_from_latest = bool (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  managed_image_id = string (Computed)
  os_disk_image_size_gb = number (Computed)
  os_disk_snapshot_id = string (Computed)
  sort_versions_by_semver = bool (Optional)
  tags = ['map', 'string'] (Optional)
  target_region = ['list', ['object', {'name': 'string', 'regional_replica_count': 'number', 'storage_account_type': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
