resource "azurerm_shared_image_version" "name" {
  gallery_name = string (Required)
  image_name = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  blob_uri = string (Optional)
  deletion_of_replicated_locations_enabled = bool (Optional)
  end_of_life_date = string (Optional)
  exclude_from_latest = bool (Optional)
  id = string (Optional, Computed)
  managed_image_id = string (Optional)
  os_disk_snapshot_id = string (Optional)
  replication_mode = string (Optional)
  storage_account_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  target_region block "list" (Required) {
    name = string (Required)
    regional_replica_count = number (Required)
    disk_encryption_set_id = string (Optional)
    exclude_from_latest_enabled = bool (Optional)
    storage_account_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
