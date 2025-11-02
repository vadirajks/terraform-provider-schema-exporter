resource "azurerm_notification_hub_authorization_rule" "name" {
  name = string (Required)
  namespace_name = string (Required)
  notification_hub_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  listen = bool (Optional)
  manage = bool (Optional)
  primary_access_key = string (Computed)
  primary_connection_string = string (Computed)
  secondary_access_key = string (Computed)
  secondary_connection_string = string (Computed)
  send = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
