resource "azurerm_logic_app_trigger_recurrence" "name" {
  frequency = string (Required)
  interval = number (Required)
  logic_app_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  start_time = string (Optional)
  time_zone = string (Optional, Computed)

  schedule block "list" (Optional) {
    at_these_hours = ['set', 'number'] (Optional)
    at_these_minutes = ['set', 'number'] (Optional)
    on_these_days = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
