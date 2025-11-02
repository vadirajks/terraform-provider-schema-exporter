resource "azurerm_eventhub" "name" {
  name = string (Required)
  partition_count = number (Required)
  id = string (Optional, Computed)
  message_retention = number (Optional, Computed)
  namespace_id = string (Optional, Computed)
  namespace_name = string (Optional, Computed)
  partition_ids = ['set', 'string'] (Computed)
  resource_group_name = string (Optional, Computed)
  status = string (Optional)

  capture_description block "list" (Optional) {
    enabled = bool (Required)
    encoding = string (Required)
    interval_in_seconds = number (Optional)
    size_limit_in_bytes = number (Optional)
    skip_empty_archives = bool (Optional)

    destination block "list" (Required) {
      archive_name_format = string (Required)
      blob_container_name = string (Required)
      name = string (Required)
      storage_account_id = string (Required)
    }
  }

  retention_description block "list" (Optional) {
    cleanup_policy = string (Required)
    retention_time_in_hours = number (Optional)
    tombstone_retention_time_in_hours = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
