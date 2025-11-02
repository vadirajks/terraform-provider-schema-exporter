resource "azurerm_monitor_data_collection_endpoint" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  configuration_access_endpoint = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  immutable_id = string (Computed)
  kind = string (Optional)
  logs_ingestion_endpoint = string (Computed)
  metrics_ingestion_endpoint = string (Computed)
  public_network_access_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
