resource "azurerm_data_share_dataset_blob_storage" "name" {
  container_name = string (Required)
  data_share_id = string (Required)
  name = string (Required)
  display_name = string (Computed)
  file_path = string (Optional)
  folder_path = string (Optional)
  id = string (Optional, Computed)

  storage_account block "list" (Required) {
    name = string (Required)
    resource_group_name = string (Required)
    subscription_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
