resource "azurerm_storage_sync_cloud_endpoint" "name" {
  file_share_name = string (Required)
  name = string (Required)
  storage_account_id = string (Required)
  storage_sync_group_id = string (Required)
  id = string (Optional, Computed)
  storage_account_tenant_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
