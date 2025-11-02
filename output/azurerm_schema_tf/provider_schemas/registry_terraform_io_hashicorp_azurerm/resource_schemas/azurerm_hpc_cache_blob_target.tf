resource "azurerm_hpc_cache_blob_target" "name" {
  cache_name = string (Required)
  name = string (Required)
  namespace_path = string (Required)
  resource_group_name = string (Required)
  storage_container_id = string (Required)
  access_policy_name = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
