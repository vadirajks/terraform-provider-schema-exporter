resource "azurerm_bot_channel_ms_teams" "name" {
  bot_name = string (Required)
  location = string (Required)
  resource_group_name = string (Required)
  calling_enabled = bool (Optional, Computed)
  calling_web_hook = string (Optional, Computed)
  deployment_environment = string (Optional)
  enable_calling = bool (Optional, Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
