resource "azurerm_data_factory_pipeline" "name" {
  data_factory_id = string (Required)
  name = string (Required)
  activities_json = string (Optional)
  annotations = ['list', 'string'] (Optional)
  concurrency = number (Optional)
  description = string (Optional)
  folder = string (Optional)
  id = string (Optional, Computed)
  moniter_metrics_after_duration = string (Optional)
  parameters = ['map', 'string'] (Optional)
  variables = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
