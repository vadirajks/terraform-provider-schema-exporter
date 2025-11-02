resource "azurerm_data_share" "name" {
  account_id = string (Required)
  kind = string (Required)
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  terms = string (Optional)

  snapshot_schedule block "list" (Optional) {
    name = string (Required)
    recurrence = string (Required)
    start_time = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
