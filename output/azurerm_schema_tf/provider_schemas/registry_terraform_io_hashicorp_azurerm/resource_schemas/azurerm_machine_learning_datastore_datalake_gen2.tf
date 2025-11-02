resource "azurerm_machine_learning_datastore_datalake_gen2" "name" {
  name = string (Required)
  storage_container_id = string (Required)
  workspace_id = string (Required)
  authority_url = string (Optional)
  client_id = string (Optional)
  client_secret = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  is_default = bool (Computed)
  service_data_identity = string (Optional)
  tags = ['map', 'string'] (Optional)
  tenant_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
