resource "azurerm_bot_channel_directline" "name" {
  bot_name = string (Required)
  location = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  site block "set" (Required) {
    name = string (Required)
    enabled = bool (Optional)
    endpoint_parameters_enabled = bool (Optional)
    enhanced_authentication_enabled = bool (Optional)
    id = string (Computed)
    key = string (Computed)
    key2 = string (Computed)
    storage_enabled = bool (Optional)
    trusted_origins = ['set', 'string'] (Optional)
    user_upload_enabled = bool (Optional)
    v1_allowed = bool (Optional)
    v3_allowed = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
