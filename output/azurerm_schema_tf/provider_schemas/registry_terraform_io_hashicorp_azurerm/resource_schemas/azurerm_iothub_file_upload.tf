resource "azurerm_iothub_file_upload" "name" {
  connection_string = string (Required)
  container_name = string (Required)
  iothub_id = string (Required)
  authentication_type = string (Optional)
  default_ttl = string (Optional)
  id = string (Optional, Computed)
  identity_id = string (Optional)
  lock_duration = string (Optional)
  max_delivery_count = number (Optional)
  notifications_enabled = bool (Optional)
  sas_ttl = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
