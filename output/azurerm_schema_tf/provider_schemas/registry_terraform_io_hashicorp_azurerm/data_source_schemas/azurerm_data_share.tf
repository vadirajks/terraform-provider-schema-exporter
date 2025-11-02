data "azurerm_data_share" "name" {
  account_id = string (Required)
  name = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)
  kind = string (Computed)
  snapshot_schedule = ['list', ['object', {'name': 'string', 'recurrence': 'string', 'start_time': 'string'}]] (Computed)
  terms = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
