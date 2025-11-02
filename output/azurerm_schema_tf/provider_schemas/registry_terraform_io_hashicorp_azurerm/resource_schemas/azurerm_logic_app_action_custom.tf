resource "azurerm_logic_app_action_custom" "name" {
  body = string (Required)
  logic_app_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
