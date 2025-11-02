resource "azurerm_key_vault_certificate_issuer" "name" {
  key_vault_id = string (Required)
  name = string (Required)
  provider_name = string (Required)
  account_id = string (Optional)
  id = string (Optional, Computed)
  org_id = string (Optional)
  password = string (Optional)

  admin block "list" (Optional) {
    email_address = string (Required)
    first_name = string (Optional)
    last_name = string (Optional)
    phone = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
