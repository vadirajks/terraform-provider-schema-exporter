resource "azurerm_spring_cloud_build_deployment" "name" {
  build_result_id = string (Required)
  name = string (Required)
  spring_cloud_app_id = string (Required)
  addon_json = string (Optional, Computed)
  application_performance_monitoring_ids = ['list', 'string'] (Optional)
  environment_variables = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  instance_count = number (Optional)

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
