resource "azurerm_container_app_custom_domain" "name" {
  container_app_id = string (Required)
  name = string (Required)
  certificate_binding_type = string (Optional)
  container_app_environment_certificate_id = string (Optional)
  container_app_environment_managed_certificate_id = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
