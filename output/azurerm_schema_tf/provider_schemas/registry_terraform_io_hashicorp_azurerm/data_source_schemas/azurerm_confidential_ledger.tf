data "azurerm_confidential_ledger" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  azuread_based_service_principal = ['list', ['object', {'ledger_role_name': 'string', 'principal_id': 'string', 'tenant_id': 'string'}]] (Computed)
  certificate_based_security_principal = ['list', ['object', {'ledger_role_name': 'string', 'pem_public_key': 'string'}]] (Computed)
  id = string (Optional, Computed)
  identity_service_endpoint = string (Computed)
  ledger_endpoint = string (Computed)
  ledger_type = string (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
