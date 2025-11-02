resource "azurerm_logic_app_trigger_http_request" "name" {
  logic_app_id = string (Required)
  name = string (Required)
  schema = string (Required)
  callback_url = string (Computed)
  id = string (Optional, Computed)
  method = string (Optional)
  relative_path = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
