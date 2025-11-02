data "azurerm_eventhub_namespace" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  auto_inflate_enabled = bool (Computed)
  capacity = number (Computed)
  dedicated_cluster_id = string (Computed)
  default_primary_connection_string = string (Computed)
  default_primary_connection_string_alias = string (Computed)
  default_primary_key = string (Computed)
  default_secondary_connection_string = string (Computed)
  default_secondary_connection_string_alias = string (Computed)
  default_secondary_key = string (Computed)
  id = string (Optional, Computed)
  kafka_enabled = bool (Computed)
  location = string (Computed)
  maximum_throughput_units = number (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
