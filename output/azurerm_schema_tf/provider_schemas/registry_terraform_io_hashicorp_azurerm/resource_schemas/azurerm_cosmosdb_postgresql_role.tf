resource "azurerm_cosmosdb_postgresql_role" "name" {
  cluster_id = string (Required)
  name = string (Required)
  password = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
