resource "azurerm_monitor_workspace" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  default_data_collection_endpoint_id = string (Computed)
  default_data_collection_rule_id = string (Computed)
  id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  query_endpoint = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
