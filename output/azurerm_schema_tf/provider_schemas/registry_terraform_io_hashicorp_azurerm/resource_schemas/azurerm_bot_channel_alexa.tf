resource "azurerm_bot_channel_alexa" "name" {
  bot_name = string (Required)
  location = string (Required)
  resource_group_name = string (Required)
  skill_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
