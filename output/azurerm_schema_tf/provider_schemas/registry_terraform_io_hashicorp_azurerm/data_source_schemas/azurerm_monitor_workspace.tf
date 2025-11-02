data "azurerm_monitor_workspace" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  default_data_collection_endpoint_id = string (Computed)
  default_data_collection_rule_id = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  public_network_access_enabled = bool (Computed)
  query_endpoint = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
