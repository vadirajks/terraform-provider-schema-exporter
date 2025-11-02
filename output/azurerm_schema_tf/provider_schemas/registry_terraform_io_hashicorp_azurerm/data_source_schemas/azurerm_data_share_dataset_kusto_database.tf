data "azurerm_data_share_dataset_kusto_database" "name" {
  name = string (Required)
  share_id = string (Required)
  display_name = string (Computed)
  id = string (Optional, Computed)
  kusto_cluster_location = string (Computed)
  kusto_database_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
