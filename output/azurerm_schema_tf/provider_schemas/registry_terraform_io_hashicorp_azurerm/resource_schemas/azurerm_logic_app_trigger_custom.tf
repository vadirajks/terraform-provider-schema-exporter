resource "azurerm_logic_app_trigger_custom" "name" {
  body = string (Required)
  logic_app_id = string (Required)
  name = string (Required)
  callback_url = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
