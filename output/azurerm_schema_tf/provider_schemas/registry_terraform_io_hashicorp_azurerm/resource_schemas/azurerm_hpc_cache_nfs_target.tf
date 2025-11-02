resource "azurerm_hpc_cache_nfs_target" "name" {
  cache_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  target_host_name = string (Required)
  usage_model = string (Required)
  id = string (Optional, Computed)
  verification_timer_in_seconds = number (Optional)
  write_back_timer_in_seconds = number (Optional)

  namespace_junction block "set" (Required) {
    namespace_path = string (Required)
    nfs_export = string (Required)
    access_policy_name = string (Optional)
    target_path = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
