data "azurerm_app_service_certificate_order" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  app_service_certificate_not_renewable_reasons = ['list', 'string'] (Computed)
  auto_renew = bool (Computed)
  certificates = ['list', ['object', {'certificate_name': 'string', 'key_vault_id': 'string', 'key_vault_secret_name': 'string', 'provisioning_state': 'string'}]] (Computed)
  csr = string (Computed)
  distinguished_name = string (Computed)
  domain_verification_token = string (Computed)
  expiration_time = string (Computed)
  id = string (Optional, Computed)
  intermediate_thumbprint = string (Computed)
  is_private_key_external = bool (Computed)
  key_size = number (Computed)
  location = string (Computed)
  product_type = string (Computed)
  root_thumbprint = string (Computed)
  signed_certificate_thumbprint = string (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Computed)
  validity_in_years = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
