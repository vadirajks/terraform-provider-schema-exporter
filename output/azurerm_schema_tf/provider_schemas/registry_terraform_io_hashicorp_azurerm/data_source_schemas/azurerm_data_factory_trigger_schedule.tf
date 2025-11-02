data "azurerm_data_factory_trigger_schedule" "name" {
  data_factory_id = string (Required)
  name = string (Required)
  activated = bool (Computed)
  annotations = ['list', 'string'] (Computed)
  description = string (Computed)
  end_time = string (Computed)
  frequency = string (Computed)
  id = string (Optional, Computed)
  interval = number (Computed)
  pipeline_name = string (Computed)
  schedule = ['list', ['object', {'days_of_month': ['list', 'number'], 'days_of_week': ['list', 'string'], 'hours': ['list', 'number'], 'minutes': ['list', 'number'], 'monthly': ['list', ['object', {'week': 'number', 'weekday': 'string'}]]}]] (Computed)
  start_time = string (Computed)
  time_zone = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
