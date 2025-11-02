resource "azurerm_storage_management_policy" "name" {
  storage_account_id = string (Required)
  id = string (Optional, Computed)

  rule block "list" (Optional) {
    enabled = bool (Required)
    name = string (Required)

    actions block "list" (Required) {

      base_blob block "list" (Optional) {
        auto_tier_to_hot_from_cool_enabled = bool (Optional)
        delete_after_days_since_creation_greater_than = number (Optional)
        delete_after_days_since_last_access_time_greater_than = number (Optional)
        delete_after_days_since_modification_greater_than = number (Optional)
        tier_to_archive_after_days_since_creation_greater_than = number (Optional)
        tier_to_archive_after_days_since_last_access_time_greater_than = number (Optional)
        tier_to_archive_after_days_since_last_tier_change_greater_than = number (Optional)
        tier_to_archive_after_days_since_modification_greater_than = number (Optional)
        tier_to_cold_after_days_since_creation_greater_than = number (Optional)
        tier_to_cold_after_days_since_last_access_time_greater_than = number (Optional)
        tier_to_cold_after_days_since_modification_greater_than = number (Optional)
        tier_to_cool_after_days_since_creation_greater_than = number (Optional)
        tier_to_cool_after_days_since_last_access_time_greater_than = number (Optional)
        tier_to_cool_after_days_since_modification_greater_than = number (Optional)
      }

      snapshot block "list" (Optional) {
        change_tier_to_archive_after_days_since_creation = number (Optional)
        change_tier_to_cool_after_days_since_creation = number (Optional)
        delete_after_days_since_creation_greater_than = number (Optional)
        tier_to_archive_after_days_since_last_tier_change_greater_than = number (Optional)
        tier_to_cold_after_days_since_creation_greater_than = number (Optional)
      }

      version block "list" (Optional) {
        change_tier_to_archive_after_days_since_creation = number (Optional)
        change_tier_to_cool_after_days_since_creation = number (Optional)
        delete_after_days_since_creation = number (Optional)
        tier_to_archive_after_days_since_last_tier_change_greater_than = number (Optional)
        tier_to_cold_after_days_since_creation_greater_than = number (Optional)
      }
    }

    filters block "list" (Required) {
      blob_types = ['set', 'string'] (Required)
      prefix_match = ['set', 'string'] (Optional)

      match_blob_index_tag block "set" (Optional) {
        name = string (Required)
        value = string (Required)
        operation = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
