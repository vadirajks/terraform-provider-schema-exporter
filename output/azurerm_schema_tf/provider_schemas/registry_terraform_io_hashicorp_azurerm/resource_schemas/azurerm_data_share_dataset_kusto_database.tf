resource "azurerm_data_share_dataset_kusto_database" "name" {
  kusto_database_id = string (Required)
  name = string (Required)
  share_id = string (Required)
  display_name = string (Computed)
  id = string (Optional, Computed)
  kusto_cluster_location = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
