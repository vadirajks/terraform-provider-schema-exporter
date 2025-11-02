resource "azurerm_data_factory_trigger_tumbling_window" "name" {
  data_factory_id = string (Required)
  frequency = string (Required)
  interval = number (Required)
  name = string (Required)
  start_time = string (Required)
  activated = bool (Optional)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  delay = string (Optional)
  description = string (Optional)
  end_time = string (Optional)
  id = string (Optional, Computed)
  max_concurrency = number (Optional)

  pipeline block "list" (Required) {
    name = string (Required)
    parameters = ['map', 'string'] (Optional)
  }

  retry block "list" (Optional) {
    count = number (Required)
    interval = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  trigger_dependency block "set" (Optional) {
    offset = string (Optional)
    size = string (Optional)
    trigger_name = string (Optional)
  }
}
