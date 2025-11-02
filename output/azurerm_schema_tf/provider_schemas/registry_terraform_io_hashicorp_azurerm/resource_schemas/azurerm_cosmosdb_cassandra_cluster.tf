resource "azurerm_cosmosdb_cassandra_cluster" "name" {
  default_admin_password = string (Required)
  delegated_management_subnet_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  authentication_method = string (Optional)
  client_certificate_pems = ['list', 'string'] (Optional)
  external_gossip_certificate_pems = ['list', 'string'] (Optional)
  external_seed_node_ip_addresses = ['list', 'string'] (Optional)
  hours_between_backups = number (Optional)
  id = string (Optional, Computed)
  repair_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)
  version = string (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
