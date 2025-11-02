resource "azurerm_storage_account_queue_properties" "name" {
  storage_account_id = string (Required)
  id = string (Optional, Computed)

  cors_rule block "list" (Optional) {
    allowed_headers = ['list', 'string'] (Required)
    allowed_methods = ['list', 'string'] (Required)
    allowed_origins = ['list', 'string'] (Required)
    exposed_headers = ['list', 'string'] (Required)
    max_age_in_seconds = number (Required)
  }

  hour_metrics block "list" (Optional) {
    version = string (Required)
    include_apis = bool (Optional)
    retention_policy_days = number (Optional)
  }

  logging block "list" (Optional) {
    delete = bool (Required)
    read = bool (Required)
    version = string (Required)
    write = bool (Required)
    retention_policy_days = number (Optional)
  }

  minute_metrics block "list" (Optional) {
    version = string (Required)
    include_apis = bool (Optional)
    retention_policy_days = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
