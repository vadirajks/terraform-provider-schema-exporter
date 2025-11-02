resource "azurerm_storage_object_replication" "name" {
  destination_storage_account_id = string (Required)
  source_storage_account_id = string (Required)
  destination_object_replication_id = string (Computed)
  id = string (Optional, Computed)
  source_object_replication_id = string (Computed)

  rules block "set" (Required) {
    destination_container_name = string (Required)
    source_container_name = string (Required)
    copy_blobs_created_after = string (Optional)
    filter_out_blobs_with_prefix = ['set', 'string'] (Optional)
    name = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
