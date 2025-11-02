data "azurerm_notification_hub" "name" {
  name = string (Required)
  namespace_name = string (Required)
  resource_group_name = string (Required)
  apns_credential = ['list', ['object', {'application_mode': 'string', 'bundle_id': 'string', 'key_id': 'string', 'team_id': 'string', 'token': 'string'}]] (Computed)
  gcm_credential = ['list', ['object', {'api_key': 'string'}]] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
