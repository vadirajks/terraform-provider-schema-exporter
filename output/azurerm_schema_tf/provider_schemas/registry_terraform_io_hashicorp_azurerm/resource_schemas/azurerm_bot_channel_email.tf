resource "azurerm_bot_channel_email" "name" {
  bot_name = string (Required)
  email_address = string (Required)
  location = string (Required)
  resource_group_name = string (Required)
  email_password = string (Optional)
  id = string (Optional, Computed)
  magic_code = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
