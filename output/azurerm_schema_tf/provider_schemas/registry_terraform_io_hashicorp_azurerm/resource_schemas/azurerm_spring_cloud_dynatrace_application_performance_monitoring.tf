resource "azurerm_spring_cloud_dynatrace_application_performance_monitoring" "name" {
  connection_point = string (Required)
  name = string (Required)
  spring_cloud_service_id = string (Required)
  tenant = string (Required)
  tenant_token = string (Required)
  api_token = string (Optional)
  api_url = string (Optional)
  environment_id = string (Optional)
  globally_enabled = bool (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
