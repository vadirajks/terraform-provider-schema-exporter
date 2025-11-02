resource "azurerm_data_share_dataset_data_lake_gen2" "name" {
  file_system_name = string (Required)
  name = string (Required)
  share_id = string (Required)
  storage_account_id = string (Required)
  display_name = string (Computed)
  file_path = string (Optional)
  folder_path = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
