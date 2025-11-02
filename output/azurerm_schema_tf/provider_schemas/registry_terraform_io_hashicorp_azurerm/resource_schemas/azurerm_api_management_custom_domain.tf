resource "azurerm_api_management_custom_domain" "name" {
  api_management_id = string (Required)
  id = string (Optional, Computed)

  developer_portal block "list" (Optional) {
    host_name = string (Required)
    certificate = string (Optional)
    certificate_password = string (Optional)
    certificate_source = string (Computed)
    certificate_status = string (Computed)
    expiry = string (Computed)
    key_vault_certificate_id = string (Optional, Computed)
    key_vault_id = string (Optional, Computed)
    negotiate_client_certificate = bool (Optional)
    ssl_keyvault_identity_client_id = string (Optional)
    subject = string (Computed)
    thumbprint = string (Computed)
  }

  gateway block "list" (Optional) {
    host_name = string (Required)
    certificate = string (Optional)
    certificate_password = string (Optional)
    certificate_source = string (Computed)
    certificate_status = string (Computed)
    default_ssl_binding = bool (Optional, Computed)
    expiry = string (Computed)
    key_vault_certificate_id = string (Optional, Computed)
    key_vault_id = string (Optional, Computed)
    negotiate_client_certificate = bool (Optional)
    ssl_keyvault_identity_client_id = string (Optional)
    subject = string (Computed)
    thumbprint = string (Computed)
  }

  management block "list" (Optional) {
    host_name = string (Required)
    certificate = string (Optional)
    certificate_password = string (Optional)
    certificate_source = string (Computed)
    certificate_status = string (Computed)
    expiry = string (Computed)
    key_vault_certificate_id = string (Optional, Computed)
    key_vault_id = string (Optional, Computed)
    negotiate_client_certificate = bool (Optional)
    ssl_keyvault_identity_client_id = string (Optional)
    subject = string (Computed)
    thumbprint = string (Computed)
  }

  portal block "list" (Optional) {
    host_name = string (Required)
    certificate = string (Optional)
    certificate_password = string (Optional)
    certificate_source = string (Computed)
    certificate_status = string (Computed)
    expiry = string (Computed)
    key_vault_certificate_id = string (Optional, Computed)
    key_vault_id = string (Optional, Computed)
    negotiate_client_certificate = bool (Optional)
    ssl_keyvault_identity_client_id = string (Optional)
    subject = string (Computed)
    thumbprint = string (Computed)
  }

  scm block "list" (Optional) {
    host_name = string (Required)
    certificate = string (Optional)
    certificate_password = string (Optional)
    certificate_source = string (Computed)
    certificate_status = string (Computed)
    expiry = string (Computed)
    key_vault_certificate_id = string (Optional, Computed)
    key_vault_id = string (Optional, Computed)
    negotiate_client_certificate = bool (Optional)
    ssl_keyvault_identity_client_id = string (Optional)
    subject = string (Computed)
    thumbprint = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
