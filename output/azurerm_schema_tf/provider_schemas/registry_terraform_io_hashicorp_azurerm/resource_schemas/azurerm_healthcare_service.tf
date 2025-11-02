resource "azurerm_healthcare_service" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  access_policy_object_ids = ['set', 'string'] (Optional)
  configuration_export_storage_account_name = string (Optional)
  cosmosdb_key_vault_key_versionless_id = string (Optional)
  cosmosdb_throughput = number (Optional)
  id = string (Optional, Computed)
  kind = string (Optional)
  public_network_access_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  authentication_configuration block "list" (Optional) {
    audience = string (Optional)
    authority = string (Optional)
    smart_proxy_enabled = bool (Optional)
  }

  cors_configuration block "list" (Optional) {
    allow_credentials = bool (Optional)
    allowed_headers = ['set', 'string'] (Optional)
    allowed_methods = ['list', 'string'] (Optional)
    allowed_origins = ['set', 'string'] (Optional)
    max_age_in_seconds = number (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
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
