resource "azurerm_api_management_notification_recipient_user" "name" {
  api_management_id = string (Required)
  notification_type = string (Required)
  user_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
