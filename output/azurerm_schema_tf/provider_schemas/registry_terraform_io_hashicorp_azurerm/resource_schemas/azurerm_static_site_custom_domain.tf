resource "azurerm_static_site_custom_domain" "name" {
  domain_name = string (Required)
  static_site_id = string (Required)
  id = string (Optional, Computed)
  validation_token = string (Computed)
  validation_type = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
