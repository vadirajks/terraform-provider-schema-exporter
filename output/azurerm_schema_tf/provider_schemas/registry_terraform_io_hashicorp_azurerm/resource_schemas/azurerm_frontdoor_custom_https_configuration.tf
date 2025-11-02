resource "azurerm_frontdoor_custom_https_configuration" "name" {
  custom_https_provisioning_enabled = bool (Required)
  frontend_endpoint_id = string (Required)
  id = string (Optional, Computed)

  custom_https_configuration block "list" (Optional) {
    azure_key_vault_certificate_secret_name = string (Optional)
    azure_key_vault_certificate_secret_version = string (Optional)
    azure_key_vault_certificate_vault_id = string (Optional)
    certificate_source = string (Optional)
    minimum_tls_version = string (Computed)
    provisioning_state = string (Computed)
    provisioning_substate = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
