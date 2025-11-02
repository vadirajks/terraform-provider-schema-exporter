data "azurerm_nginx_certificate" "name" {
  name = string (Required)
  nginx_deployment_id = string (Required)
  certificate_virtual_path = string (Computed)
  error_code = string (Computed)
  error_message = string (Computed)
  id = string (Optional, Computed)
  key_vault_secret_creation_date = string (Computed)
  key_vault_secret_id = string (Computed)
  key_vault_secret_version = string (Computed)
  key_virtual_path = string (Computed)
  sha1_thumbprint = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
