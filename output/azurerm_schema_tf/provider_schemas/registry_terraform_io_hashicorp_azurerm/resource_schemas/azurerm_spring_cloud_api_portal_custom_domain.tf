resource "azurerm_spring_cloud_api_portal_custom_domain" "name" {
  name = string (Required)
  spring_cloud_api_portal_id = string (Required)
  id = string (Optional, Computed)
  thumbprint = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
