resource "azurerm_spring_cloud_container_deployment" "name" {
  image = string (Required)
  name = string (Required)
  server = string (Required)
  spring_cloud_app_id = string (Required)
  addon_json = string (Optional, Computed)
  application_performance_monitoring_ids = ['list', 'string'] (Optional)
  arguments = ['list', 'string'] (Optional)
  commands = ['list', 'string'] (Optional)
  environment_variables = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  instance_count = number (Optional)
  language_framework = string (Optional)

  quota block "list" (Optional) {
    cpu = string (Optional, Computed)
    memory = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
