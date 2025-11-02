resource "azurerm_bot_web_app" "name" {
  location = string (Required)
  microsoft_app_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  developer_app_insights_api_key = string (Optional)
  developer_app_insights_application_id = string (Optional)
  developer_app_insights_key = string (Optional)
  display_name = string (Optional, Computed)
  endpoint = string (Optional)
  id = string (Optional, Computed)
  luis_app_ids = ['list', 'string'] (Optional)
  luis_key = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
