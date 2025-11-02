resource "azurerm_cosmosdb_postgresql_node_configuration" "name" {
  cluster_id = string (Required)
  name = string (Required)
  value = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
