resource "azurerm_key_vault_certificate_contacts" "name" {
  key_vault_id = string (Required)
  id = string (Optional, Computed)

  contact block "set" (Optional) {
    email = string (Required)
    name = string (Optional)
    phone = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
