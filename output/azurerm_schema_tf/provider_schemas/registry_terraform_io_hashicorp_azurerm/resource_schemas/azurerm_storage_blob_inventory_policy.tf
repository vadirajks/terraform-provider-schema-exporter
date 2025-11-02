resource "azurerm_storage_blob_inventory_policy" "name" {
  storage_account_id = string (Required)
  id = string (Optional, Computed)

  rules block "set" (Required) {
    format = string (Required)
    name = string (Required)
    schedule = string (Required)
    schema_fields = ['list', 'string'] (Required)
    scope = string (Required)
    storage_container_name = string (Required)

    filter block "list" (Optional) {
      blob_types = ['set', 'string'] (Required)
      exclude_prefixes = ['set', 'string'] (Optional)
      include_blob_versions = bool (Optional)
      include_deleted = bool (Optional)
      include_snapshots = bool (Optional)
      prefix_match = ['set', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
