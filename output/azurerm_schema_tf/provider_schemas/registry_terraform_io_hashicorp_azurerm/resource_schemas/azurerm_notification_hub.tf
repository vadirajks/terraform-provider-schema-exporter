resource "azurerm_notification_hub" "name" {
  location = string (Required)
  name = string (Required)
  namespace_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  apns_credential block "list" (Optional) {
    application_mode = string (Required)
    bundle_id = string (Required)
    key_id = string (Required)
    team_id = string (Required)
    token = string (Required)
  }

  browser_credential block "list" (Optional) {
    subject = string (Required)
    vapid_private_key = string (Required)
    vapid_public_key = string (Required)
  }

  gcm_credential block "list" (Optional) {
    api_key = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
