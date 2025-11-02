resource "azurerm_app_service_source_control_token" "name" {
  token = string (Required)
  type = string (Required)
  id = string (Optional, Computed)
  token_secret = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
