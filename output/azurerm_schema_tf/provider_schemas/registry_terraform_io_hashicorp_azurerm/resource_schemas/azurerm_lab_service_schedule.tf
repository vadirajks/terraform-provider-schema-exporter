resource "azurerm_lab_service_schedule" "name" {
  lab_id = string (Required)
  name = string (Required)
  stop_time = string (Required)
  time_zone = string (Required)
  id = string (Optional, Computed)
  notes = string (Optional)
  start_time = string (Optional)

  recurrence block "list"  (Optional){
    expiration_date = string (Required)
    frequency = string (Required)
    interval = number (Optional)
    week_days = ['list', 'string'] (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
