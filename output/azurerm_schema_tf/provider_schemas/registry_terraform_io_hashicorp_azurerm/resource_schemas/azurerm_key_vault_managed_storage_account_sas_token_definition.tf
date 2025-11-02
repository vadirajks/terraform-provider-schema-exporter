resource "azurerm_key_vault_managed_storage_account_sas_token_definition" "name" {
  managed_storage_account_id = string (Required)
  name = string (Required)
  sas_template_uri = string (Required)
  sas_type = string (Required)
  validity_period = string (Required)
  id = string (Optional, Computed)
  secret_id = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
