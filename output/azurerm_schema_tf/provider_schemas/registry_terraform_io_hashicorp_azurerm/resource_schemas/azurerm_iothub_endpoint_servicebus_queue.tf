resource "azurerm_iothub_endpoint_servicebus_queue" "name" {
  iothub_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  authentication_type = string (Optional)
  connection_string = string (Optional)
  endpoint_uri = string (Optional)
  entity_path = string (Optional)
  id = string (Optional, Computed)
  identity_id = string (Optional)
  subscription_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
