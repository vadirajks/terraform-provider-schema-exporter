data "azurerm_data_share_dataset_blob_storage" "name" {
  data_share_id = string (Required)
  name = string (Required)
  container_name = string (Computed)
  display_name = string (Computed)
  file_path = string (Computed)
  folder_path = string (Computed)
  id = string (Optional, Computed)
  storage_account = ['list', ['object', {'name': 'string', 'resource_group_name': 'string', 'subscription_id': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
