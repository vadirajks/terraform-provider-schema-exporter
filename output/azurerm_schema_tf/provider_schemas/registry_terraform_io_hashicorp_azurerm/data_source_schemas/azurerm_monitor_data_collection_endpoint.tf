data "azurerm_monitor_data_collection_endpoint" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  configuration_access_endpoint = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  immutable_id = string (Computed)
  kind = string (Computed)
  location = string (Computed)
  logs_ingestion_endpoint = string (Computed)
  metrics_ingestion_endpoint = string (Computed)
  public_network_access_enabled = bool (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
