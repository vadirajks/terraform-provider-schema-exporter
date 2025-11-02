resource "azurerm_confidential_ledger" "name" {
  ledger_type = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  identity_service_endpoint = string (Computed)
  ledger_endpoint = string (Computed)
  tags = ['map', 'string'] (Optional)

  azuread_based_service_principal block "list" (Required) {
    ledger_role_name = string (Required)
    principal_id = string (Required)
    tenant_id = string (Required)
  }

  certificate_based_security_principal block "list" (Optional) {
    ledger_role_name = string (Required)
    pem_public_key = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
