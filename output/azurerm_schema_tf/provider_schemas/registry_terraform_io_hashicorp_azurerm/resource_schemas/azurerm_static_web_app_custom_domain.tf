resource "azurerm_static_web_app_custom_domain" "name" {
  domain_name = string (Required)
  static_web_app_id = string (Required)
  validation_type = string (Required)
  id = string (Optional, Computed)
  validation_token = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
