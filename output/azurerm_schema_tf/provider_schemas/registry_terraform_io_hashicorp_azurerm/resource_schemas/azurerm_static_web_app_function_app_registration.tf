resource "azurerm_static_web_app_function_app_registration" "name" {
  function_app_id = string (Required)
  static_web_app_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
