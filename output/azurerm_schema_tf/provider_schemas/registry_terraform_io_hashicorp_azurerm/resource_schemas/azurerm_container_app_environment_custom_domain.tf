resource "azurerm_container_app_environment_custom_domain" "name" {
  certificate_blob_base64 = string (Required)
  certificate_password = string (Required)
  container_app_environment_id = string (Required)
  dns_suffix = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
