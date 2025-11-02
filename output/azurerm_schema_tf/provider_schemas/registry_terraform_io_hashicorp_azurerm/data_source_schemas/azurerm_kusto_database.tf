data "azurerm_kusto_database" "name" {
  cluster_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  hot_cache_period = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  size = number (Computed)
  soft_delete_period = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
