data "azurerm_mssql_server" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  administrator_login = string (Computed)
  express_vulnerability_assessment_enabled = bool (Computed)
  fully_qualified_domain_name = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  restorable_dropped_database_ids = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)
  transparent_data_encryption_key_vault_key_id = string (Computed)
  version = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
