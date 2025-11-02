resource "azurerm_machine_learning_datastore_blobstorage" "name" {
  name = string (Required)
  storage_container_id = string (Required)
  workspace_id = string (Required)
  account_key = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  is_default = bool (Optional)
  service_data_auth_identity = string (Optional)
  shared_access_signature = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
