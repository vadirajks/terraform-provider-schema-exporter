resource "azurerm_hpc_cache_access_policy" "name" {
  hpc_cache_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  access_rule block "set" (Required) {
    access = string (Required)
    scope = string (Required)
    anonymous_gid = number (Optional)
    anonymous_uid = number (Optional)
    filter = string (Optional)
    root_squash_enabled = bool (Optional)
    submount_access_enabled = bool (Optional)
    suid_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
