resource "azurerm_bot_channel_facebook" "name" {
  bot_name = string (Required)
  facebook_application_id = string (Required)
  facebook_application_secret = string (Required)
  location = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  page block "set" (Required) {
    access_token = string (Required)
    id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
