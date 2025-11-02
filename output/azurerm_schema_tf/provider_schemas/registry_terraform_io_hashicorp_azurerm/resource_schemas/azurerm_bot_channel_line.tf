resource "azurerm_bot_channel_line" "name" {
  bot_name = string (Required)
  location = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  line_channel block "set" (Required) {
    access_token = string (Required)
    secret = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
