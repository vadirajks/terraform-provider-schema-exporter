data "azurerm_servicebus_namespace" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  capacity = number (Computed)
  default_primary_connection_string = string (Computed)
  default_primary_key = string (Computed)
  default_secondary_connection_string = string (Computed)
  default_secondary_key = string (Computed)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  premium_messaging_partitions = number (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
