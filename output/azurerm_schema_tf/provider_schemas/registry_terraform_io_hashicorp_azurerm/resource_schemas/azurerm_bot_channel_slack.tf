resource "azurerm_bot_channel_slack" "name" {
  bot_name = string (Required)
  client_id = string (Required)
  client_secret = string (Required)
  location = string (Required)
  resource_group_name = string (Required)
  verification_token = string (Required)
  id = string (Optional, Computed)
  landing_page_url = string (Optional)
  signing_secret = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
