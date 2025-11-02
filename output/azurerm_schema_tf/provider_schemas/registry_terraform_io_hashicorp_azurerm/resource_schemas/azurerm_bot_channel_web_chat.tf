resource "azurerm_bot_channel_web_chat" "name" {
  bot_name = string (Required)
  location = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  site block "set" (Optional) {
    name = string (Required)
    endpoint_parameters_enabled = bool (Optional)
    storage_enabled = bool (Optional)
    user_upload_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
