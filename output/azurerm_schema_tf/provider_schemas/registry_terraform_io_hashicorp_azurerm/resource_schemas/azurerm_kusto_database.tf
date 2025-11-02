resource "azurerm_kusto_database" "name" {
  cluster_name = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  hot_cache_period = string (Optional)
  id = string (Optional, Computed)
  size = number (Computed)
  soft_delete_period = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
