resource "azurerm_storage_sync_server_endpoint" "name" {
  name = string (Required)
  registered_server_id = string (Required)
  server_local_path = string (Required)
  storage_sync_group_id = string (Required)
  cloud_tiering_enabled = bool (Optional)
  id = string (Optional, Computed)
  initial_download_policy = string (Optional)
  local_cache_mode = string (Optional)
  tier_files_older_than_days = number (Optional)
  volume_free_space_percent = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
