resource "azurerm_spring_cloud_application_live_view" "name" {
  name = string (Required)
  spring_cloud_service_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
