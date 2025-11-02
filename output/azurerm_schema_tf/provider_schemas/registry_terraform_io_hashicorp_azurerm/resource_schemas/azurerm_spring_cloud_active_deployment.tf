resource "azurerm_spring_cloud_active_deployment" "name" {
  deployment_name = string (Required)
  spring_cloud_app_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
