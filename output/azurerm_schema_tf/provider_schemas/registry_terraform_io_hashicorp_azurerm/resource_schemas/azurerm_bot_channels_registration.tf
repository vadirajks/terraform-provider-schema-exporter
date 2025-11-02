resource "azurerm_bot_channels_registration" "name" {
  location = string (Required)
  microsoft_app_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  cmk_key_vault_url = string (Optional)
  description = string (Optional)
  developer_app_insights_api_key = string (Optional)
  developer_app_insights_application_id = string (Optional)
  developer_app_insights_key = string (Optional)
  display_name = string (Optional, Computed)
  endpoint = string (Optional)
  icon_url = string (Optional)
  id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  streaming_endpoint_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
