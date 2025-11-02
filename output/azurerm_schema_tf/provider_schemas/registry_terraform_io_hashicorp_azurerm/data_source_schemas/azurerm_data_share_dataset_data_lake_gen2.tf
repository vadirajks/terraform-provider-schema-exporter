data "azurerm_data_share_dataset_data_lake_gen2" "name" {
  name = string (Required)
  share_id = string (Required)
  display_name = string (Computed)
  file_path = string (Computed)
  file_system_name = string (Computed)
  folder_path = string (Computed)
  id = string (Optional, Computed)
  storage_account_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
