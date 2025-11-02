resource "azurerm_bot_channel_direct_line_speech" "name" {
  bot_name = string (Required)
  cognitive_service_access_key = string (Required)
  cognitive_service_location = string (Required)
  location = string (Required)
  resource_group_name = string (Required)
  cognitive_account_id = string (Optional)
  custom_speech_model_id = string (Optional)
  custom_voice_deployment_id = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
