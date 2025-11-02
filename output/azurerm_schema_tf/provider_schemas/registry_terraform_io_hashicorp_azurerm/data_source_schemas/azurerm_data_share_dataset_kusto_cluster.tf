data "azurerm_data_share_dataset_kusto_cluster" "name" {
  name = string (Required)
  share_id = string (Required)
  display_name = string (Computed)
  id = string (Optional, Computed)
  kusto_cluster_id = string (Computed)
  kusto_cluster_location = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
