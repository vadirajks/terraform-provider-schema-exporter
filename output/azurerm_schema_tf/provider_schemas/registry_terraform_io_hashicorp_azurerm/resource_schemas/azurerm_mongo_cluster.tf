resource "azurerm_mongo_cluster" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  administrator_password = string (Optional)
  administrator_username = string (Optional)
  compute_tier = string (Optional)
  connection_strings = ['list', ['object', {'description': 'string', 'name': 'string', 'value': 'string'}]] (Computed)
  create_mode = string (Optional)
  high_availability_mode = string (Optional)
  id = string (Optional, Computed)
  preview_features = ['list', 'string'] (Optional)
  public_network_access = string (Optional)
  shard_count = number (Optional)
  source_location = string (Optional)
  source_server_id = string (Optional)
  storage_size_in_gb = number (Optional)
  tags = ['map', 'string'] (Optional)
  version = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
