resource "azurerm_bot_channel_sms" "name" {
  bot_name = string (Required)
  location = string (Required)
  phone_number = string (Required)
  resource_group_name = string (Required)
  sms_channel_account_security_id = string (Required)
  sms_channel_auth_token = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
