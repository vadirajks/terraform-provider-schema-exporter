data "azurerm_key_vault_encrypted_value" "name" {
  algorithm = string (Required)
  key_vault_key_id = string (Required)
  decoded_plain_text_value = string (Computed)
  encrypted_data = string (Optional)
  id = string (Optional, Computed)
  plain_text_value = string (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
