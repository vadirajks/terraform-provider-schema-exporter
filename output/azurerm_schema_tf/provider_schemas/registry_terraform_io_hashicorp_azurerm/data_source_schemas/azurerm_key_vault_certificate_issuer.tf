data "azurerm_key_vault_certificate_issuer" "name" {
  key_vault_id = string (Required)
  name = string (Required)
  account_id = string (Computed)
  admin = ['list', ['object', {'email_address': 'string', 'first_name': 'string', 'last_name': 'string', 'phone': 'string'}]] (Computed)
  id = string (Optional, Computed)
  org_id = string (Computed)
  provider_name = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
