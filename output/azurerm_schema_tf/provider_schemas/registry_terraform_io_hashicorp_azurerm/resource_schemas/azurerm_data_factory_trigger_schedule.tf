resource "azurerm_data_factory_trigger_schedule" "name" {
  data_factory_id = string (Required)
  name = string (Required)
  activated = bool (Optional)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  end_time = string (Optional)
  frequency = string (Optional)
  id = string (Optional, Computed)
  interval = number (Optional)
  pipeline_name = string (Optional, Computed)
  pipeline_parameters = ['map', 'string'] (Optional, Computed)
  start_time = string (Optional, Computed)
  time_zone = string (Optional)

  pipeline block "list" (Optional) {
    name = string (Required)
    parameters = ['map', 'string'] (Optional)
  }

  schedule block "list" (Optional) {
    days_of_month = ['list', 'number'] (Optional)
    days_of_week = ['list', 'string'] (Optional)
    hours = ['list', 'number'] (Optional)
    minutes = ['list', 'number'] (Optional)

    monthly block "list" (Optional) {
      weekday = string (Required)
      week = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
