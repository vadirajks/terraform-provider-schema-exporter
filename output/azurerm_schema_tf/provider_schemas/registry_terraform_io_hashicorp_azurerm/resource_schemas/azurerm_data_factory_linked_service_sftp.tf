resource "azurerm_data_factory_linked_service_sftp" "name" {
  authentication_type = string (Required)
  data_factory_id = string (Required)
  host = string (Required)
  name = string (Required)
  port = number (Required)
  username = string (Required)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  host_key_fingerprint = string (Optional)
  id = string (Optional, Computed)
  integration_runtime_name = string (Optional)
  parameters = ['map', 'string'] (Optional)
  password = string (Optional)
  private_key_content_base64 = string (Optional)
  private_key_passphrase = string (Optional)
  private_key_path = string (Optional)
  skip_host_key_validation = bool (Optional)

  key_vault_password block "list" (Optional) {
    linked_service_name = string (Required)
    secret_name = string (Required)
  }

  key_vault_private_key_content_base64 block "list" (Optional) {
    linked_service_name = string (Required)
    secret_name = string (Required)
  }

  key_vault_private_key_passphrase block "list" (Optional) {
    linked_service_name = string (Required)
    secret_name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
