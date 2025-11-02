resource "azurerm_logic_app_integration_account_certificate" "name" {
  integration_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  metadata = string (Optional)
  public_certificate = string (Optional)

  key_vault_key block "list" (Optional) {
    key_name = string (Required)
    key_vault_id = string (Required)
    key_version = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
