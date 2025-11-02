resource "azurerm_spring_cloud_application_insights_application_performance_monitoring" "name" {
  name = string (Required)
  spring_cloud_service_id = string (Required)
  connection_string = string (Optional)
  globally_enabled = bool (Optional)
  id = string (Optional, Computed)
  role_instance = string (Optional)
  role_name = string (Optional)
  sampling_percentage = number (Optional)
  sampling_requests_per_second = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
