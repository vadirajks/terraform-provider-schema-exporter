resource "azurerm_hpc_cache_blob_nfs_target" "name" {
  cache_name = string (Required)
  name = string (Required)
  namespace_path = string (Required)
  resource_group_name = string (Required)
  storage_container_id = string (Required)
  usage_model = string (Required)
  access_policy_name = string (Optional)
  id = string (Optional, Computed)
  verification_timer_in_seconds = number (Optional)
  write_back_timer_in_seconds = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
