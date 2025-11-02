resource "azurerm_api_management_certificate" "name" {
  api_management_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  data = string (Optional)
  expiration = string (Computed)
  id = string (Optional, Computed)
  key_vault_identity_client_id = string (Optional)
  key_vault_secret_id = string (Optional)
  password = string (Optional)
  subject = string (Computed)
  thumbprint = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
