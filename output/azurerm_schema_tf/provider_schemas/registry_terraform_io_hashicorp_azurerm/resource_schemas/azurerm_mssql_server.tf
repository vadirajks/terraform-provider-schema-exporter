resource "azurerm_mssql_server" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  version = string (Required)
  administrator_login = string (Optional, Computed)
  administrator_login_password = string (Optional)
  administrator_login_password_wo = string (Optional)
  administrator_login_password_wo_version = number (Optional)
  connection_policy = string (Optional)
  express_vulnerability_assessment_enabled = bool (Optional)
  fully_qualified_domain_name = string (Computed)
  id = string (Optional, Computed)
  minimum_tls_version = string (Optional)
  outbound_network_restriction_enabled = bool (Optional)
  primary_user_assigned_identity_id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  restorable_dropped_database_ids = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)
  transparent_data_encryption_key_vault_key_id = string (Optional)

  azuread_administrator block "list" (Optional) {
    login_username = string (Required)
    object_id = string (Required)
    azuread_authentication_only = bool (Optional, Computed)
    tenant_id = string (Optional, Computed)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
