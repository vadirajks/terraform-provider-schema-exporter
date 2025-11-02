resource "azurerm_api_management_logger" "name" {
  api_management_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  buffered = bool (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  resource_id = string (Optional)

  application_insights block "list" (Optional) {
    connection_string = string (Optional)
    instrumentation_key = string (Optional)
  }

  eventhub block "list" (Optional) {
    name = string (Required)
    connection_string = string (Optional)
    endpoint_uri = string (Optional)
    user_assigned_identity_client_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
