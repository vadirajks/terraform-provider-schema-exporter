resource "azurerm_app_service_certificate_order" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  app_service_certificate_not_renewable_reasons = ['list', 'string'] (Computed)
  auto_renew = bool (Optional)
  certificates = ['list', ['object', {'certificate_name': 'string', 'key_vault_id': 'string', 'key_vault_secret_name': 'string', 'provisioning_state': 'string'}]] (Computed)
  csr = string (Optional, Computed)
  distinguished_name = string (Optional, Computed)
  domain_verification_token = string (Computed)
  expiration_time = string (Computed)
  id = string (Optional, Computed)
  intermediate_thumbprint = string (Computed)
  is_private_key_external = bool (Computed)
  key_size = number (Optional)
  product_type = string (Optional)
  root_thumbprint = string (Computed)
  signed_certificate_thumbprint = string (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  validity_in_years = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
