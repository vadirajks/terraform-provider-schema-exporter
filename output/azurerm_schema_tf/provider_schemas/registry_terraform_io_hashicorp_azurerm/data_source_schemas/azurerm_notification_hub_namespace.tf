data "azurerm_notification_hub_namespace" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  enabled = bool (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  namespace_type = string (Computed)
  servicebus_endpoint = string (Computed)
  sku = ['list', ['object', {'name': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
