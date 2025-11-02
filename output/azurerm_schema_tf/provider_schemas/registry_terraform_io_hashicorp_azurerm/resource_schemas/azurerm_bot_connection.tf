resource "azurerm_bot_connection" "name" {
  bot_name = string (Required)
  client_id = string (Required)
  client_secret = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  service_provider_name = string (Required)
  id = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional)
  scopes = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
