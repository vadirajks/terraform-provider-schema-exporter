resource "azurerm_logic_app_action_http" "name" {
  logic_app_id = string (Required)
  method = string (Required)
  name = string (Required)
  uri = string (Required)
  body = string (Optional)
  headers = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  queries = ['map', 'string'] (Optional)

  run_after block "set" (Optional) {
    action_name = string (Required)
    action_result = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
