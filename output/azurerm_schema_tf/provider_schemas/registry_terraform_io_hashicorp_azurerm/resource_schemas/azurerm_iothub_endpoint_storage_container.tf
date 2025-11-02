resource "azurerm_iothub_endpoint_storage_container" "name" {
  container_name = string (Required)
  iothub_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  authentication_type = string (Optional)
  batch_frequency_in_seconds = number (Optional)
  connection_string = string (Optional)
  encoding = string (Optional)
  endpoint_uri = string (Optional)
  file_name_format = string (Optional)
  id = string (Optional, Computed)
  identity_id = string (Optional)
  max_chunk_size_in_bytes = number (Optional)
  subscription_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
