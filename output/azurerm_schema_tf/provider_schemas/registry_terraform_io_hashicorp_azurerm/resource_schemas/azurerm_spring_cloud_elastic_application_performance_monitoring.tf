resource "azurerm_spring_cloud_elastic_application_performance_monitoring" "name" {
  application_packages = ['list', 'string'] (Required)
  name = string (Required)
  server_url = string (Required)
  service_name = string (Required)
  spring_cloud_service_id = string (Required)
  globally_enabled = bool (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
