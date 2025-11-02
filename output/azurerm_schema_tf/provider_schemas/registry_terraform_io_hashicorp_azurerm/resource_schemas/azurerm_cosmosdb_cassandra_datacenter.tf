resource "azurerm_cosmosdb_cassandra_datacenter" "name" {
  cassandra_cluster_id = string (Required)
  delegated_management_subnet_id = string (Required)
  location = string (Required)
  name = string (Required)
  availability_zones_enabled = bool (Optional)
  backup_storage_customer_key_uri = string (Optional)
  base64_encoded_yaml_fragment = string (Optional)
  disk_count = number (Optional)
  disk_sku = string (Optional)
  id = string (Optional, Computed)
  managed_disk_customer_key_uri = string (Optional)
  node_count = number (Optional)
  seed_node_ip_addresses = ['list', 'string'] (Computed)
  sku_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
